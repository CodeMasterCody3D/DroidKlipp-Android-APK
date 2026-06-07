.class Lx/org/server/AccelerometerReader$GyroscopeListener;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/AccelerometerReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GyroscopeListener"
.end annotation


# instance fields
.field final filterMax:[F

.field final filterMin:[F

.field public invertedOrientation:Z

.field measuredNoiseRange:[F

.field measurementIteration:I

.field movementBackoff:I

.field noiseData:[[F

.field noiseDataIdx:I

.field noiseMax:[F

.field noiseMin:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->invertedOrientation:Z

    const/4 v1, 0x3

    .line 115
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMin:[F

    .line 116
    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMax:[F

    .line 120
    new-array v2, v1, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    .line 121
    new-array v1, v1, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    .line 125
    array-length v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/16 v1, 0xc8

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    .line 126
    iput v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    .line 130
    iput v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->movementBackoff:I

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    .line 137
    iput v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    return-void

    :array_0
    .array-data 4
        -0x42b33333    # -0.05f
        -0x42b33333    # -0.05f
        -0x42b33333    # -0.05f
    .end array-data

    :array_1
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3d4ccccd    # 0.05f
        0x3d4ccccd    # 0.05f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public available(Landroid/app/Activity;)Z
    .locals 1

    .line 298
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 299
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method collectNoiseData([F)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 147
    aget v3, p1, v1

    aget v2, v2, v1

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    aget v2, v2, v1

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    iget v4, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    aget-object v2, v2, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    iget p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->movementBackoff:I

    const/16 v1, 0xa

    if-gez p1, :cond_3

    neg-int v2, p1

    if-ge v2, v1, :cond_2

    neg-int p1, p1

    goto :goto_2

    :cond_2
    const/16 p1, 0xa

    .line 155
    :goto_2
    iget v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    sub-int/2addr v2, p1

    iput v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    if-gez v2, :cond_3

    .line 157
    iput v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    .line 159
    :cond_3
    iput v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->movementBackoff:I

    return-void

    .line 164
    :cond_4
    iget p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->movementBackoff:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->movementBackoff:I

    if-ltz p1, :cond_5

    goto/16 :goto_5

    .line 167
    :cond_5
    iget p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    add-int/2addr p1, v1

    iput p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    .line 169
    iget-object v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    array-length v2, v2

    if-ge p1, v2, :cond_6

    goto/16 :goto_5

    .line 172
    :cond_6
    iget p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    add-int/2addr p1, v1

    iput p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "GYRO_NOISE: Measuring in progress... "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SDL"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    const/4 v3, 0x5

    if-le p1, v3, :cond_7

    .line 177
    iget-object p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    iget-object v3, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMin:[F

    array-length v4, v3

    invoke-static {p1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    iget-object v3, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMax:[F

    array-length v4, v3

    invoke-static {p1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    :cond_7
    iget p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    const/16 v3, 0xf

    const/4 v4, 0x0

    if-le p1, v3, :cond_8

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GYRO_NOISE: Measuring done! Maximum number of iterations reached: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object v4, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    .line 184
    iput-object v4, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    return-void

    .line 188
    :cond_8
    iput v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseDataIdx:I

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 190
    :goto_3
    iget-object v5, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    array-length v5, v5

    if-ge p1, v5, :cond_d

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    .line 194
    :goto_4
    iget-object v8, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    array-length v9, v8

    if-ge v7, v9, :cond_b

    .line 196
    aget-object v8, v8, v7

    aget v8, v8, p1

    cmpl-float v9, v5, v8

    if-lez v9, :cond_9

    move v5, v8

    :cond_9
    cmpg-float v9, v6, v8

    if-gez v9, :cond_a

    move v6, v8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    add-float v7, v5, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v8, v5, v7

    const v9, 0x3e4ccccd    # 0.2f

    mul-float v8, v8, v9

    add-float/2addr v5, v8

    sub-float v7, v6, v7

    mul-float v7, v7, v9

    add-float/2addr v6, v7

    sub-float v7, v6, v5

    .line 207
    iget-object v8, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    aget v9, v8, p1

    iget-object v10, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    aget v11, v10, p1

    sub-float v12, v9, v11

    cmpg-float v7, v7, v12

    if-gez v7, :cond_c

    cmpl-float v7, v5, v11

    if-ltz v7, :cond_c

    cmpg-float v7, v6, v9

    if-gtz v7, :cond_c

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v5, v5, v3

    add-float/2addr v11, v5

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v11, v5

    .line 210
    aput v11, v10, p1

    .line 211
    aget v7, v8, p1

    mul-float v6, v6, v3

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    aput v7, v8, p1

    const/4 v3, 0x1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 216
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "GYRO_NOISE: MIN MAX: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_e

    :goto_5
    return-void

    .line 223
    :cond_e
    iget-object p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    array-length p1, p1

    new-array v3, p1, [F

    const/4 v5, 0x0

    .line 224
    :goto_6
    iget-object v6, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    array-length v7, v6

    if-ge v5, v7, :cond_f

    .line 225
    iget-object v7, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    aget v7, v7, v5

    aget v6, v6, v5

    sub-float/2addr v7, v6

    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 227
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GYRO_NOISE: RANGE:   "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    if-nez v1, :cond_10

    .line 231
    iput-object v3, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    return-void

    :cond_10
    const/4 v1, 0x0

    :goto_7
    if-ge v1, p1, :cond_12

    .line 237
    iget-object v5, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    aget v5, v5, v1

    aget v6, v3, v1

    div-float/2addr v5, v6

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 239
    iput-object v3, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 245
    :cond_12
    iget-object p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMin:[F

    iget-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMin:[F

    array-length v3, v1

    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object p1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseMax:[F

    iget-object v1, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMax:[F

    array-length v3, v1

    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iput-object v4, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    .line 248
    iput-object v4, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measuredNoiseRange:[F

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GYRO_NOISE: Measuring done! Range converged on iteration "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->measurementIteration:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 255
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 257
    iget-object v0, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->noiseData:[[F

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lx/org/server/AccelerometerReader$GyroscopeListener;->collectNoiseData([F)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    .line 262
    aget v4, p1, v2

    iget-object v5, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMin:[F

    aget v5, v5, v2

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    sub-float/2addr v4, v5

    .line 265
    aput v4, p1, v2

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    .line 267
    :cond_1
    iget-object v5, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->filterMax:[F

    aget v5, v5, v2

    cmpl-float v6, v4, v5

    if-lez v6, :cond_2

    sub-float/2addr v4, v5

    .line 270
    aput v4, p1, v2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    return-void

    .line 277
    :cond_4
    sget-boolean v2, Lx/org/server/Globals;->HorizontalOrientation:Z

    .line 286
    iget-boolean v3, p0, Lx/org/server/AccelerometerReader$GyroscopeListener;->invertedOrientation:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 280
    aget v0, p1, v0

    neg-float v0, v0

    aget v1, p1, v1

    neg-float v1, v1

    aget p1, p1, v4

    invoke-static {v0, v1, p1}, Lx/org/server/AccelerometerReader;->access$000(FFF)V

    return-void

    .line 282
    :cond_5
    aget v0, p1, v0

    aget v1, p1, v1

    aget p1, p1, v4

    invoke-static {v0, v1, p1}, Lx/org/server/AccelerometerReader;->access$000(FFF)V

    return-void

    :cond_6
    if-eqz v3, :cond_7

    .line 287
    aget v1, p1, v1

    neg-float v1, v1

    aget v0, p1, v0

    aget p1, p1, v4

    invoke-static {v1, v0, p1}, Lx/org/server/AccelerometerReader;->access$000(FFF)V

    return-void

    .line 289
    :cond_7
    aget v1, p1, v1

    aget v0, p1, v0

    neg-float v0, v0

    aget p1, p1, v4

    invoke-static {v1, v0, p1}, Lx/org/server/AccelerometerReader;->access$000(FFF)V

    return-void
.end method

.method public registerListener(Landroid/app/Activity;Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 303
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 p2, 0x4

    if-nez p1, :cond_0

    .line 304
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    sget-object v0, Lx/org/server/AccelerometerReader;->gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

    .line 307
    sget-boolean v1, Lx/org/server/Globals;->AppUsesOrientationSensor:Z

    if-eqz v1, :cond_1

    const/16 p2, 0xf

    .line 306
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public unregisterListener(Landroid/app/Activity;Landroid/hardware/SensorEventListener;)V
    .locals 1

    .line 313
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-nez p1, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
