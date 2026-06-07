.class Lx/org/server/DataDownloader;
.super Ljava/lang/Thread;
.source "DataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DataDownloader$StatusWriter;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FLAG_FILENAME:Ljava/lang/String; = "libsdl-DownloadFinished-"


# instance fields
.field public DownloadCanBeResumed:Z

.field public DownloadComplete:Z

.field private Parent:Lx/org/server/MainActivity;

.field public Status:Lx/org/server/DataDownloader$StatusWriter;

.field private outFilesDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;Landroid/widget/TextView;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 878
    iput-boolean v0, p0, Lx/org/server/DataDownloader;->DownloadComplete:Z

    .line 879
    iput-boolean v0, p0, Lx/org/server/DataDownloader;->DownloadCanBeResumed:Z

    const/4 v1, 0x0

    .line 881
    iput-object v1, p0, Lx/org/server/DataDownloader;->outFilesDir:Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    .line 180
    new-instance v1, Lx/org/server/DataDownloader$StatusWriter;

    invoke-direct {v1, p0, p2, p1}, Lx/org/server/DataDownloader$StatusWriter;-><init>(Lx/org/server/DataDownloader;Landroid/widget/TextView;Lx/org/server/MainActivity;)V

    iput-object v1, p0, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    .line 181
    sget-object p1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    iput-object p1, p0, Lx/org/server/DataDownloader;->outFilesDir:Ljava/lang/String;

    .line 182
    iput-boolean v0, p0, Lx/org/server/DataDownloader;->DownloadComplete:Z

    .line 183
    invoke-virtual {p0}, Lx/org/server/DataDownloader;->start()V

    return-void
.end method

.method private copyUnpackFileStream(Lx/org/server/CountingInputStream;Ljava/lang/String;Ljava/lang/String;ZZZJJLjava/net/URLConnection;II)Z
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v7, p9

    move/from16 v9, p12

    .line 606
    const-string v11, "%x"

    const-string v12, "\' - cannot create file: "

    const-string v13, "\' - error creating output file: "

    .line 0
    const-string v0, "Resuming download of file \'"

    const/16 v14, 0x4000

    .line 607
    new-array v15, v14, [B

    .line 608
    iget-object v14, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v14}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 p6, v11

    .line 610
    const-string v11, "\' done"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x42c80000    # 100.0f

    const-wide/16 v19, 0x3e8

    move-object/from16 v21, v12

    const-string v12, "\'"

    const-string v5, ": "

    const-string v6, "/"

    const-string v4, "Saving file \'"

    move-object/from16 v23, v11

    const/16 v24, 0x1

    const-string v11, "SDL"

    move-object/from16 v25, v5

    const-wide/16 v26, 0x0

    if-eqz p4, :cond_a

    .line 612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 618
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    nop

    :cond_1
    :goto_0
    cmp-long v5, v7, v26

    if-lez v5, :cond_3

    .line 624
    :try_start_1
    const-string v5, "Content-Range"

    move-object/from16 v10, p11

    invoke-virtual {v10, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 625
    const-string v10, "bytes"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 628
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v28, 0x0

    aget-object v5, v5, v28

    const-string v10, "-"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v28

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 629
    array-length v10, v5

    const/4 v12, 0x2

    if-lt v10, v12, :cond_3

    aget-object v5, v5, v24

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    cmp-long v5, v29, v7

    if-nez v5, :cond_3

    .line 631
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v5, v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    .line 632
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' at pos "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object/from16 v16, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_4

    :catch_4
    nop

    goto :goto_1

    .line 636
    :cond_2
    :try_start_3
    const-string v0, "Server does not support partial downloads. "

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    nop

    :cond_3
    :goto_2
    if-nez v16, :cond_4

    .line 641
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v16, v0

    move-wide/from16 v7, v26

    goto :goto_5

    .line 647
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 645
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    move-object/from16 v0, v16

    if-nez v0, :cond_5

    .line 651
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_write:I

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v5, v10

    invoke-virtual {v14, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' - error creating output file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_5
    const/4 v10, 0x0

    .line 657
    :try_start_5
    invoke-virtual {v2, v15}, Lx/org/server/CountingInputStream;->read([B)I

    move-result v5

    move-wide/from16 v12, v26

    :goto_6
    if-ltz v5, :cond_9

    if-lez v5, :cond_6

    .line 661
    invoke-virtual {v0, v15, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 662
    :cond_6
    invoke-virtual {v2, v15}, Lx/org/server/CountingInputStream;->read([B)I

    move-result v5

    cmp-long v10, p7, v26

    if-lez v10, :cond_7

    .line 666
    invoke-virtual {v2}, Lx/org/server/CountingInputStream;->getBytesRead()J

    move-result-wide v29

    move-wide/from16 p3, v7

    add-long v7, v29, p3

    long-to-float v7, v7

    mul-float v7, v7, v18

    move/from16 p5, v7

    add-long v7, p7, p3

    long-to-float v7, v7

    div-float v7, p5, v7

    goto :goto_7

    :cond_7
    move-wide/from16 p3, v7

    const/4 v7, 0x0

    .line 667
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    add-long v31, v12, v19

    cmp-long v8, v29, v31

    if-lez v8, :cond_8

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 670
    iget-object v8, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p5, v5

    move/from16 v5, p13

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    move/from16 p6, v7

    move-object/from16 v7, v25

    :try_start_6
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p9, v0

    sget v0, Lx/org/server/R$string;->dl_progress:I

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-wide/from16 p10, v12

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v16, v13, v28

    const/16 v24, 0x1

    aput-object v3, v13, v24

    invoke-virtual {v14, v0, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    move-wide/from16 v12, p10

    goto :goto_8

    :cond_8
    move-object/from16 p9, v0

    move/from16 p5, v5

    move-object/from16 v7, v25

    move/from16 v5, p13

    :goto_8
    move/from16 v5, p5

    move-object/from16 v0, p9

    move-object/from16 v25, v7

    const/4 v10, 0x0

    move-wide/from16 v7, p3

    goto/16 :goto_6

    :cond_9
    move-object/from16 p9, v0

    move-object/from16 v7, v25

    .line 673
    invoke-virtual/range {p9 .. p9}, Ljava/io/OutputStream;->flush()V

    .line 674
    invoke-virtual/range {p9 .. p9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v7, v25

    .line 677
    :goto_9
    iget-object v2, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lx/org/server/R$string;->error_write:I

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v3, v8, v28

    invoke-virtual {v14, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' - error writing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return v28

    :cond_a
    move/from16 v5, p13

    move-object/from16 v3, v23

    move-object/from16 v7, v25

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Reading from zip file \'"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v0, ".zip.xz"

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ".zip.xz/download"

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_b

    .line 700
    :cond_b
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_a
    move-object v13, v0

    goto :goto_c

    .line 690
    :cond_c
    :goto_b
    :try_start_7
    sget-object v0, Lx/org/server/Globals;->AppLibraries:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v13, "lzma"

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 692
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v13, Lx/org/server/XZInputStream;

    invoke-direct {v13, v2}, Lx/org/server/XZInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_19

    goto :goto_a

    .line 702
    :goto_c
    const-string v2, ""

    move-object/from16 v23, v3

    invoke-direct {v1, v2}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v29, v26

    .line 708
    :goto_d
    :try_start_8
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p2, v13

    const-string v13, "\' entry \'"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17

    goto :goto_e

    :cond_d
    move-object/from16 p2, v13

    :goto_e
    if-nez v25, :cond_e

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' finished"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    const/16 v24, 0x1

    return v24

    .line 721
    :cond_e
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "Creating dir \'"

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :try_start_9
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_10

    .line 727
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_10
    move-object/from16 v13, p2

    goto/16 :goto_d

    .line 733
    :cond_11
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :try_start_a
    new-instance v0, Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_a

    move-object/from16 p4, v8

    :try_start_b
    invoke-virtual {v13, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_b

    move-object/from16 v31, v12

    const/4 v12, 0x0

    :try_start_c
    invoke-virtual {v13, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_13

    .line 741
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_10

    :catch_a
    move-object/from16 p4, v8

    :catch_b
    move-object/from16 v31, v12

    .line 745
    :catch_c
    :cond_13
    :goto_10
    :try_start_d
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v8, v12}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    :goto_11
    const/16 v8, 0x4000

    const/4 v12, 0x0

    .line 746
    invoke-virtual {v0, v15, v12, v8}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    move-result v32

    if-ltz v32, :cond_14

    goto :goto_11

    .line 747
    :cond_14
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 748
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v32

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v34

    cmp-long v0, v32, v34

    if-nez v0, :cond_17

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' exists and passed CRC check - not overwriting it"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    cmp-long v0, p7, v26

    if-lez v0, :cond_15

    move-object/from16 p9, v2

    move-object/from16 p10, v3

    .line 756
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lx/org/server/CountingInputStream;->getBytesRead()J

    move-result-wide v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    long-to-float v0, v2

    mul-float v0, v0, v18

    move-wide/from16 v2, p7

    long-to-float v8, v2

    div-float/2addr v0, v8

    goto :goto_12

    :catch_d
    move-wide/from16 v2, p7

    move-object/from16 v33, v15

    goto/16 :goto_14

    :cond_15
    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move-wide/from16 v2, p7

    const/4 v0, 0x0

    .line 757
    :goto_12
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    add-long v34, v29, v19

    cmp-long v8, v32, v34

    if-lez v8, :cond_16

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 760
    iget-object v8, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    move/from16 p11, v0

    :try_start_10
    sget v0, Lx/org/server/R$string;->dl_progress:I

    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    move-object/from16 v33, v15

    const/4 v10, 0x2

    :try_start_11
    new-array v15, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v32, v15, v28

    const/16 v24, 0x1

    aput-object v13, v15, v24

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_13

    :cond_16
    move-object/from16 v33, v15

    :goto_13
    move-object/from16 v13, p2

    move-object/from16 v10, p3

    move-object/from16 v8, p4

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v12, v31

    move-object/from16 v15, v33

    goto/16 :goto_d

    :catch_e
    move/from16 p11, v0

    :catch_f
    move-object/from16 v33, v15

    :catch_10
    move/from16 v8, p11

    goto :goto_15

    :cond_17
    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move-object/from16 v33, v15

    move-wide/from16 v2, p7

    .line 750
    :try_start_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 752
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    :catch_11
    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move-object/from16 v33, v15

    move-wide/from16 v2, p7

    :catch_12
    :goto_14
    const/4 v8, 0x0

    .line 766
    :goto_15
    :try_start_13
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_13

    move-object/from16 v12, v21

    goto :goto_17

    :catch_13
    move-exception v0

    .line 770
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v21

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catch_14
    move-exception v0

    move-object/from16 v12, v21

    .line 768
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move-object/from16 v0, v16

    :goto_17
    if-nez v0, :cond_18

    .line 774
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_write:I

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v13, v3, v28

    invoke-virtual {v14, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' - cannot create file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v28

    :cond_18
    cmp-long v10, v2, v26

    move/from16 p11, v10

    move-object v15, v11

    if-lez v10, :cond_19

    .line 780
    invoke-virtual/range {p1 .. p1}, Lx/org/server/CountingInputStream;->getBytesRead()J

    move-result-wide v10

    long-to-float v8, v10

    mul-float v8, v8, v18

    long-to-float v10, v2

    div-float/2addr v8, v10

    .line 782
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v34, v29, v19

    cmp-long v21, v10, v34

    if-lez v21, :cond_1a

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 785
    iget-object v10, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v8

    sget v8, Lx/org/server/R$string;->dl_progress:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v32, v15

    move-object/from16 v15, p9

    move-object/from16 p9, v32

    move-object/from16 v32, v12

    move-object/from16 v12, p10

    invoke-virtual {v13, v12, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v35, v4

    const/4 v4, 0x2

    new-array v12, v4, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v21, v12, v28

    const/16 v24, 0x1

    aput-object v34, v12, v24

    invoke-virtual {v14, v8, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    goto :goto_18

    :cond_1a
    move-object/from16 v32, v15

    move-object/from16 v15, p9

    move-object/from16 p9, v32

    move-object/from16 v35, v4

    move-object/from16 v32, v12

    :goto_18
    move-object/from16 v8, p2

    move-object/from16 v4, v33

    .line 789
    :try_start_14
    invoke-virtual {v8, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    :goto_19
    if-ltz v10, :cond_1e

    if-lez v10, :cond_1b

    const/4 v12, 0x0

    .line 793
    invoke-virtual {v0, v4, v12, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 794
    :cond_1b
    invoke-virtual {v8, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    if-lez p11, :cond_1c

    .line 798
    invoke-virtual/range {p1 .. p1}, Lx/org/server/CountingInputStream;->getBytesRead()J

    move-result-wide v11

    long-to-float v11, v11

    mul-float v11, v11, v18

    long-to-float v12, v2

    div-float/2addr v11, v12

    goto :goto_1a

    :cond_1c
    const/4 v11, 0x0

    .line 799
    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    add-long v36, v29, v19

    cmp-long v12, v33, v36

    if-lez v12, :cond_1d

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 802
    iget-object v12, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    move-object/from16 p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lx/org/server/R$string;->dl_progress:I

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object/from16 v11, p10

    invoke-virtual {v13, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 p10, v3

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object p10, v5, v28

    const/16 v24, 0x1

    aput-object v21, v5, v24

    invoke-virtual {v14, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v2, p7

    move/from16 v5, p13

    move-object/from16 p10, v11

    goto :goto_19

    :cond_1d
    move-wide/from16 v2, p7

    move/from16 v5, p13

    goto :goto_19

    :cond_1e
    move-object/from16 v11, p10

    move-object/from16 p2, v0

    const/4 v3, 0x2

    .line 805
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 806
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_16

    .line 816
    :try_start_15
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v0, v2, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object/from16 v33, v4

    move-wide/from16 v3, v26

    move-wide/from16 v21, v3

    :goto_1b
    cmp-long v2, v21, v26

    if-ltz v2, :cond_1f

    add-long v3, v3, v21

    move-object/from16 v2, v33

    const/16 v5, 0x4000

    const/4 v10, 0x0

    .line 820
    invoke-virtual {v0, v2, v10, v5}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    move-result v12

    move-object/from16 p5, v6

    int-to-long v5, v12

    move-object/from16 v33, v2

    move-wide/from16 v21, v5

    move-object/from16 v6, p5

    goto :goto_1b

    :cond_1f
    move-object/from16 p5, v6

    move-object/from16 v2, v33

    .line 822
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 827
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v33

    cmp-long v12, v5, v33

    if-nez v12, :cond_21

    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    cmp-long v12, v3, v5

    if-eqz v12, :cond_20

    goto :goto_1c

    :cond_20
    move-object/from16 v10, p6

    move-object/from16 v3, p9

    move-object v12, v8

    move-object/from16 v6, v35

    goto/16 :goto_1d

    .line 831
    :cond_21
    :goto_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v35

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' - CRC check failed, ZIP: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 p10, v0

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v12, v0, v28

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " actual file: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p10 .. p10}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 p6, v0

    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object p6, v0, v28

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " file size in ZIP: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v8

    .line 833
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " actual size "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p9

    .line 831
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If you still get problems try to reset the app or delete file at path "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 841
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 p6, v15

    move-object v15, v2

    move-object/from16 v2, p6

    move-object/from16 p6, v11

    move-object v11, v3

    move-object/from16 v3, p6

    move-object/from16 v8, p4

    move/from16 v9, p12

    move/from16 v5, p13

    move-object v4, v6

    move-object/from16 p6, v10

    move-object v13, v12

    move-object/from16 v12, v31

    move-object/from16 v21, v32

    move-object/from16 v10, p3

    move-object/from16 v6, p5

    goto/16 :goto_d

    :catch_15
    move-exception v0

    .line 838
    iget-object v2, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lx/org/server/R$string;->error_write:I

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v13, v5, v28

    invoke-virtual {v14, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v28

    :catch_16
    move-exception v0

    move-object/from16 v3, p9

    move-object/from16 v6, v35

    .line 809
    iget-object v2, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lx/org/server/R$string;->error_write:I

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v13, v8, v28

    invoke-virtual {v14, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' - error writing or downloading: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return v28

    :catch_17
    move-exception v0

    move-object v3, v11

    const/16 v28, 0x0

    .line 712
    iget-object v2, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v4, Lx/org/server/R$string;->error_dl_from:I

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p3, v5, v28

    invoke-virtual {v14, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error reading from zip file \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\': "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return v28

    :cond_22
    move-object v4, v10

    move-object v3, v11

    .line 691
    :try_start_16
    new-instance v0, Ljava/io/IOException;

    const-string v2, "LZMA support not compiled in - add lzma to CompiledLibraries inside AndroidAppSettings.cfg"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_18

    :catch_18
    move-exception v0

    goto :goto_1e

    :catch_19
    move-exception v0

    move-object v4, v10

    move-object v3, v11

    .line 696
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Opening file \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed - cannot open XZ input stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    return v28
.end method

.method private getObbFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    .line 874
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".obb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOutFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx/org/server/DataDownloader;->outFilesDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initParent()V
    .locals 2

    .line 857
    new-instance v0, Lx/org/server/DataDownloader$1Callback;

    invoke-direct {v0, p0}, Lx/org/server/DataDownloader$1Callback;-><init>(Lx/org/server/DataDownloader;)V

    .line 858
    monitor-enter p0

    .line 859
    :try_start_0
    iget-object v1, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iput-object v1, v0, Lx/org/server/DataDownloader$1Callback;->Parent:Lx/org/server/MainActivity;

    .line 860
    iget-object v1, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 862
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public DownloadDataFile(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 240
    const-string v2, "Fetching file from expansion: "

    const-string v3, "Failed to open file: "

    const/4 v4, 0x0

    iput-boolean v4, v1, Lx/org/server/DataDownloader;->DownloadCanBeResumed:Z

    .line 241
    iget-object v5, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v5}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 243
    const-string v6, "[|]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 244
    array-length v7, v6

    const/4 v8, 0x2

    const-string v9, "SDL"

    const/4 v10, 0x1

    if-ge v7, v8, :cond_0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: download string invalid: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', your AndroidAppSettigns.cfg is broken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v3, Lx/org/server/R$string;->error_dl_from:I

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v4

    .line 252
    :cond_0
    invoke-direct {v1, v15}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v8, 0x0

    .line 258
    :goto_0
    const-string v11, ""

    const-string v12, "UTF-8"

    if-eqz v8, :cond_5

    .line 261
    :try_start_1
    sget-object v16, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    aget-object v7, v16, p5

    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v7, v10

    new-array v7, v7, [B

    .line 262
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v8, :cond_1

    const/16 v16, 0x1

    .line 265
    :try_start_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v4, v8, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :cond_1
    const/16 v16, 0x1

    move-object v10, v11

    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    .line 268
    :goto_2
    :try_start_3
    array-length v4, v6

    if-ge v7, v4, :cond_3

    .line 271
    aget-object v4, v6, v7

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    .line 277
    iget-object v4, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v7, Lx/org/server/R$string;->download_unneeded:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v16

    .line 276
    :cond_4
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    const/16 v16, 0x1

    :catch_2
    const/16 v17, 0x0

    .line 281
    :catch_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v4, 0x0

    .line 287
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Downloading data to: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lx/org/server/DataDownloader;->outFilesDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_4
    new-instance v7, Ljava/io/File;

    iget-object v10, v1, Lx/org/server/DataDownloader;->outFilesDir:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 291
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 292
    :cond_6
    new-instance v7, Ljava/io/FileOutputStream;

    const-string v10, ".nomedia"

    invoke-direct {v1, v10}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 294
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v7, 0x1

    .line 308
    new-array v10, v7, [Z

    aput-boolean v17, v10, v17

    move/from16 p5, v4

    .line 309
    new-array v4, v7, [Z

    aput-boolean v17, v4, v17

    const-wide/16 v18, 0x0

    move-object/from16 v23, v0

    move-wide/from16 v21, v18

    const/4 v7, 0x1

    const/16 v20, 0x0

    .line 313
    :goto_4
    array-length v0, v6

    const-wide/16 v24, 0x12c

    const-string v15, "/"

    move-object/from16 v26, v6

    const-string v6, ": "

    if-ge v7, v0, :cond_13

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Processing download "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v26, v7

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Ljava/lang/String;

    aget-object v11, v26, v7

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v27, v7

    move-object/from16 v28, v12

    if-nez v20, :cond_8

    const/4 v7, 0x1

    .line 326
    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 327
    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    iput-boolean v7, v1, Lx/org/server/DataDownloader;->DownloadCanBeResumed:Z

    .line 330
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_7

    if-nez p5, :cond_7

    .line 332
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object v11, v0

    move-object/from16 v23, v12

    move-object v12, v8

    move-wide/from16 v7, v20

    const/16 v20, 0x1

    goto :goto_5

    :cond_7
    move-object v11, v0

    move-object/from16 v23, v12

    const/16 v20, 0x1

    move-object v12, v8

    move-wide/from16 v7, v18

    goto :goto_5

    :cond_8
    move-object v11, v0

    move-object v12, v8

    move-wide/from16 v7, v18

    const/16 v20, 0x0

    .line 334
    :goto_5
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    move-object/from16 v29, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v6

    sget v6, Lx/org/server/R$string;->connecting_to:I

    move-object/from16 v31, v15

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v11, v15, v17

    invoke-virtual {v5, v6, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 335
    const-string v0, "assetpack"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 337
    iget-object v0, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found asset pack: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iget-object v2, v2, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/16 v16, 0x1

    return v16

    .line 342
    :cond_9
    const-string v0, "Asset pack is not installed"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v0, v27, 0x1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move-wide/from16 v21, v7

    move-object/from16 v6, v26

    move-object/from16 v12, v28

    move-object/from16 v8, v29

    :goto_8
    move v7, v0

    goto/16 :goto_4

    .line 346
    :cond_a
    const-string v0, "obb:"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v6, "mnt:"

    if-eqz v0, :cond_10

    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_c

    .line 395
    :cond_b
    const-string v0, "http://"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_c

    const-string v0, "https://"

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 399
    :try_start_5
    iget-object v0, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 403
    :catch_5
    :try_start_6
    iget-object v0, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "000"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 412
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Fetching file from assets: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v21, v7

    move-object/from16 v3, v23

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto/16 :goto_10

    .line 406
    :catch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Failed to open file in assets: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 417
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Connecting to: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_7
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 422
    :goto_a
    const-string v6, "Accept"

    const-string v12, "*/*"

    invoke-virtual {v0, v6, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static/range {v17 .. v17}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    cmp-long v6, v7, v18

    if-lez v6, :cond_d

    .line 426
    const-string v6, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to resume download at pos "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got HTTP response "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " type "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " length "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v12, 0x12e

    if-eq v6, v12, :cond_f

    .line 432
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v12, 0x12d

    if-eq v6, v12, :cond_f

    .line 433
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v12, 0x12f

    if-eq v6, v12, :cond_f

    .line 434
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v12, 0x133

    if-eq v6, v12, :cond_f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v12, 0x134

    if-ne v6, v12, :cond_e

    goto :goto_b

    .line 445
    :cond_e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-object v12, v0

    move-wide/from16 v21, v7

    move-object/from16 v3, v23

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_12

    .line 436
    :cond_f
    :goto_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 437
    const-string v6, "Set-Cookie"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    new-instance v6, Ljava/net/URL;

    const-string v12, "Location"

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Following HTTP redirect to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_a

    :catch_7
    move-exception v0

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Failed to connect to "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " with error "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 348
    :cond_10
    :goto_c
    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_d

    :cond_11
    const/4 v0, 0x0

    .line 349
    :goto_d
    invoke-direct {v1, v11}, Lx/org/server/DataDownloader;->getObbFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 353
    :try_start_8
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 355
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_e
    move-wide/from16 v21, v7

    move-object/from16 v3, v23

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_11

    .line 376
    :catch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_9
    nop

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Failed to open file, requesting storage read permission: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v6, v12, :cond_12

    .line 365
    iget-object v6, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    const-string v12, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v6, v12}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Lx/org/server/MainActivity;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_12

    .line 366
    iget-object v6, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iget-boolean v6, v6, Lx/org/server/MainActivity;->readExternalStoragePermissionDialogAnswered:Z

    if-nez v6, :cond_12

    .line 368
    iget-object v6, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v6, v12, v14}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Lx/org/server/MainActivity;[Ljava/lang/String;I)V

    .line 369
    :goto_f
    iget-object v6, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iget-boolean v6, v6, Lx/org/server/MainActivity;->readExternalStoragePermissionDialogAnswered:Z

    if-nez v6, :cond_12

    .line 371
    :try_start_9
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    nop

    goto :goto_f

    .line 382
    :cond_12
    :try_start_a
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 384
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_e

    .line 390
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v27, 0x1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move-wide/from16 v21, v7

    move-object/from16 v6, v26

    move-object/from16 v12, v28

    move-object/from16 v8, v29

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_13
    move-object/from16 v30, v6

    move/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v28, v12

    move-object/from16 v31, v15

    move-object/from16 v3, v23

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_10
    const/4 v7, 0x0

    :goto_11
    const/4 v12, 0x0

    :goto_12
    if-eqz v0, :cond_18

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Mounting OBB file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Lx/org/server/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 462
    new-instance v2, Lx/org/server/DataDownloader$1;

    invoke-direct {v2, v1, v10, v4}, Lx/org/server/DataDownloader$1;-><init>(Lx/org/server/DataDownloader;[Z[Z)V

    const/4 v8, 0x0

    invoke-virtual {v0, v11, v8, v2}, Landroid/os/storage/StorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z

    move-result v2

    const-string v3, "Cannot mount OBB file \'"

    if-nez v2, :cond_14

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_dl_from:I

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v11, v3, v17

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    :cond_14
    move-object/from16 v12, v29

    :cond_15
    const/16 v17, 0x0

    .line 482
    aget-boolean v2, v10, v17

    if-nez v2, :cond_16

    .line 484
    :try_start_b
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    nop

    .line 485
    :goto_13
    aget-boolean v2, v4, v17

    if-eqz v2, :cond_15

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_dl_from:I

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v11, v3, v17

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    .line 492
    :cond_16
    iget-object v2, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0, v11}, Landroid/os/storage/StorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lx/org/server/MainActivity;->ObbMountPath:Ljava/lang/String;

    .line 493
    iget-object v0, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->ObbMountPath:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_dl_from:I

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v11, v3, v17

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    .line 499
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Mounted OBB file \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    iget-object v2, v2, Lx/org/server/MainActivity;->ObbMountPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_18
    const/4 v8, 0x0

    .line 503
    const-string v2, "\' - error: "

    const/16 v0, 0x2000

    if-eqz v7, :cond_19

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Count file size: \'"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 508
    new-instance v4, Lx/org/server/CountingInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v10, v0}, Lx/org/server/CountingInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    move-object v2, v4

    move-object/from16 v34, v5

    goto/16 :goto_19

    :catch_d
    move-exception v0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unpacking from filesystem \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_dl_from:I

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v11, v3, v17

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    :cond_19
    if-eqz v6, :cond_1e

    move-wide/from16 v23, v18

    const/4 v14, 0x0

    .line 524
    :goto_14
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "%03d"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v0, v17

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    new-instance v1, Lx/org/server/CountingInputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    move-object/from16 v4, p0

    :try_start_e
    iget-object v10, v4, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v10}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    const/16 v15, 0x2000

    invoke-direct {v1, v10, v15}, Lx/org/server/CountingInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    move v10, v6

    move/from16 p5, v7

    :goto_15
    const-wide/32 v6, 0x10000

    .line 526
    :try_start_f
    invoke-virtual {v1, v6, v7}, Lx/org/server/CountingInputStream;->skip(J)J

    move-result-wide v32

    cmp-long v6, v32, v18

    if-lez v6, :cond_1a

    goto :goto_15

    .line 527
    :cond_1a
    invoke-virtual {v1}, Lx/org/server/CountingInputStream;->getBytesRead()J

    move-result-wide v6

    add-long v23, v23, v6

    .line 528
    invoke-virtual {v1}, Lx/org/server/CountingInputStream;->close()V

    .line 529
    iget-object v1, v4, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v8, :cond_1b

    move-object v8, v1

    goto :goto_16

    .line 533
    :cond_1b
    new-instance v6, Ljava/io/SequenceInputStream;

    invoke-direct {v6, v8, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v8, v6

    .line 534
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multipart archive found: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, p5

    move v6, v10

    goto :goto_14

    :catch_e
    move-object/from16 v4, p0

    :catch_f
    move v10, v6

    move/from16 p5, v7

    :catch_10
    nop

    if-eqz v8, :cond_1c

    .line 541
    new-instance v0, Lx/org/server/CountingInputStream;

    const/16 v15, 0x2000

    invoke-direct {v0, v8, v15}, Lx/org/server/CountingInputStream;-><init>(Ljava/io/InputStream;I)V

    move-wide/from16 v14, v23

    goto :goto_18

    :cond_1c
    const/16 v15, 0x2000

    .line 545
    :try_start_10
    new-instance v0, Lx/org/server/CountingInputStream;

    iget-object v1, v4, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Lx/org/server/CountingInputStream;-><init>(Ljava/io/InputStream;I)V

    const-wide/32 v6, 0x10000

    .line 546
    :goto_17
    invoke-virtual {v0, v6, v7}, Lx/org/server/CountingInputStream;->skip(J)J

    move-result-wide v14

    cmp-long v1, v14, v18

    if-lez v1, :cond_1d

    goto :goto_17

    .line 547
    :cond_1d
    invoke-virtual {v0}, Lx/org/server/CountingInputStream;->getBytesRead()J

    move-result-wide v6

    .line 548
    invoke-virtual {v0}, Lx/org/server/CountingInputStream;->close()V

    .line 549
    new-instance v0, Lx/org/server/CountingInputStream;

    iget-object v1, v4, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v15, 0x2000

    invoke-direct {v0, v1, v15}, Lx/org/server/CountingInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11

    move-wide v14, v6

    :goto_18
    move/from16 v7, p5

    move-object v2, v0

    move-object v1, v4

    move-object/from16 v34, v5

    move v6, v10

    :goto_19
    move-object v4, v11

    move-wide v8, v14

    move/from16 v5, v20

    move-wide/from16 v10, v21

    move-object/from16 v15, v28

    move-object/from16 v35, v30

    const/16 v17, 0x0

    move/from16 v14, p4

    goto/16 :goto_1a

    :catch_11
    move-exception v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unpacking from assets \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, v4, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v1, Lx/org/server/R$string;->error_dl_from:I

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v11, v2, v17

    invoke-virtual {v5, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    :cond_1e
    move-object v4, v1

    move v10, v6

    move/from16 p5, v7

    const/16 v17, 0x0

    if-nez v12, :cond_1f

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error connecting to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, v4, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v1, Lx/org/server/R$string;->failed_connecting_to:I

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v11, v2, v17

    invoke-virtual {v5, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    .line 566
    :cond_1f
    iget-object v0, v4, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v31

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p4

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lx/org/server/R$string;->dl_from:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v11, v8, v17

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 569
    :try_start_11
    new-instance v6, Lx/org/server/CountingInputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v6, v8, v9}, Lx/org/server/CountingInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    move/from16 v7, p5

    move-wide v8, v0

    move-object/from16 v35, v2

    move-object v1, v4

    move-object/from16 v34, v5

    move-object v2, v6

    move v6, v10

    move-object v4, v11

    move-object/from16 v31, v15

    move/from16 v5, v20

    move-wide/from16 v10, v21

    move-object/from16 v15, v28

    .line 576
    :goto_1a
    invoke-direct/range {v1 .. v14}, Lx/org/server/DataDownloader;->copyUnpackFileStream(Lx/org/server/CountingInputStream;Ljava/lang/String;Ljava/lang/String;ZZZJJLjava/net/URLConnection;II)Z

    move-result v0

    move-object v4, v2

    if-nez v0, :cond_20

    return v17

    :cond_20
    move-object/from16 v2, p2

    .line 580
    invoke-direct {v1, v2}, Lx/org/server/DataDownloader;->getOutFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    :try_start_12
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 583
    aget-object v3, v26, v27

    invoke-virtual {v3, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 584
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 585
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    .line 590
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v31

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v35

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lx/org/server/R$string;->dl_finished:I

    move-object/from16 v5, v34

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 593
    :try_start_13
    invoke-virtual {v4}, Lx/org/server/CountingInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    :catch_12
    const/4 v7, 0x1

    return v7

    :catch_13
    move-exception v0

    move-object/from16 v5, v34

    move-object/from16 v3, v35

    const/4 v7, 0x1

    .line 587
    iget-object v4, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lx/org/server/R$string;->error_write:I

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v17

    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17

    :catch_14
    move-object v1, v4

    move-object v4, v11

    .line 571
    iget-object v0, v1, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    sget v2, Lx/org/server/R$string;->error_dl_from:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v17

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    return v17
.end method

.method public run()V
    .locals 13

    .line 196
    sget-object v0, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 199
    :goto_0
    array-length v3, v0

    const-string v9, "!"

    if-ge v2, v3, :cond_3

    .line 201
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v3, v3

    if-le v3, v2, :cond_0

    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v3, v3

    if-gt v3, v2, :cond_2

    aget-object v3, v0, v2

    .line 203
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 206
    :goto_1
    array-length v3, v0

    if-ge v8, v3, :cond_a

    .line 208
    aget-object v3, v0, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v3, v3

    if-le v3, v8, :cond_4

    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    aget-boolean v3, v3, v8

    if-nez v3, :cond_5

    :cond_4
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v3, v3

    if-gt v3, v8, :cond_9

    aget-object v3, v0, v8

    .line 210
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 212
    :cond_5
    aget-object v3, v0, v8

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v10, "<ARCH>"

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "libsdl-DownloadFinished-"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".flag"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lx/org/server/DataDownloader;->DownloadDataFile(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_8

    .line 214
    aget-object v2, v0, v8

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v2, v0, v8

    .line 215
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    aget-object v2, v0, v8

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lx/org/server/DataDownloader;->DownloadDataFile(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_8

    .line 218
    :cond_6
    iget-object v0, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 220
    iget-object v0, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 221
    sput-boolean v1, Lx/org/server/Globals;->DownloadToSdcard:Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Switching download destination directory to internal storage and restarting the app: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDL"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/Settings;->Save(Lx/org/server/MainActivity;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    const-class v3, Lx/org/server/RestartMainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    iget-object v2, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v2, v0}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_7
    return-void

    :cond_8
    move v2, v6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lx/org/server/DataDownloader;->DownloadComplete:Z

    .line 235
    invoke-direct {p0}, Lx/org/server/DataDownloader;->initParent()V

    return-void
.end method

.method public setStatusField(Landroid/widget/TextView;)V
    .locals 2

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lx/org/server/DataDownloader;->Status:Lx/org/server/DataDownloader$StatusWriter;

    iget-object v1, p0, Lx/org/server/DataDownloader;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1, v1}, Lx/org/server/DataDownloader$StatusWriter;->setParent(Landroid/widget/TextView;Lx/org/server/MainActivity;)V

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
