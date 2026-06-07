.class Lx/org/server/AccelerometerReader;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/AccelerometerReader$GyroscopeListener;,
        Lx/org/server/AccelerometerReader$OrientationListener;
    }
.end annotation


# static fields
.field public static final gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

.field public static final orientation:Lx/org/server/AccelerometerReader$OrientationListener;


# instance fields
.field private _manager:Landroid/hardware/SensorManager;

.field public openedBySDL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lx/org/server/AccelerometerReader$GyroscopeListener;

    invoke-direct {v0}, Lx/org/server/AccelerometerReader$GyroscopeListener;-><init>()V

    sput-object v0, Lx/org/server/AccelerometerReader;->gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

    .line 49
    new-instance v0, Lx/org/server/AccelerometerReader$OrientationListener;

    invoke-direct {v0}, Lx/org/server/AccelerometerReader$OrientationListener;-><init>()V

    sput-object v0, Lx/org/server/AccelerometerReader;->orientation:Lx/org/server/AccelerometerReader$OrientationListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lx/org/server/AccelerometerReader;->openedBySDL:Z

    .line 53
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$000(FFF)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lx/org/server/AccelerometerReader;->nativeGyroscope(FFF)V

    return-void
.end method

.method static synthetic access$100(FFF)V
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lx/org/server/AccelerometerReader;->nativeOrientation(FFF)V

    return-void
.end method

.method private static native nativeAccelerometer(FFF)V
.end method

.method private static native nativeGyroscope(FFF)V
.end method

.method private static native nativeOrientation(FFF)V
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 93
    sget-boolean v0, Lx/org/server/Globals;->HorizontalOrientation:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lx/org/server/AccelerometerReader;->gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

    iget-boolean v0, v0, Lx/org/server/AccelerometerReader$GyroscopeListener;->invertedOrientation:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    neg-float v0, v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, p1}, Lx/org/server/AccelerometerReader;->nativeAccelerometer(FFF)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v2, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, p1}, Lx/org/server/AccelerometerReader;->nativeAccelerometer(FFF)V

    return-void

    .line 101
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-static {v0, v2, p1}, Lx/org/server/AccelerometerReader;->nativeAccelerometer(FFF)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 69
    :try_start_0
    sget-boolean v0, Lx/org/server/Globals;->UseAccelerometerAsArrowKeys:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lx/org/server/Globals;->AppUsesAccelerometer:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "SDL"

    const-string v2, "libSDL: starting accelerometer"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 75
    :cond_1
    sget-boolean v0, Lx/org/server/Globals;->AppUsesGyroscope:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 76
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    const-string v0, "SDL"

    const-string v3, "libSDL: starting gyroscope"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v3, Lx/org/server/AccelerometerReader;->gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 81
    :cond_3
    sget-boolean v0, Lx/org/server/Globals;->AppUsesOrientationSensor:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    const/16 v2, 0xf

    .line 82
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "SDL"

    const-string v3, "libSDL: starting orientation sensor"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v3, Lx/org/server/AccelerometerReader;->orientation:Lx/org/server/AccelerometerReader$OrientationListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "SDL"

    const-string v1, "libSDL: stopping accelerometer/gyroscope/orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 62
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v1, Lx/org/server/AccelerometerReader;->gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    iget-object v0, p0, Lx/org/server/AccelerometerReader;->_manager:Landroid/hardware/SensorManager;

    sget-object v1, Lx/org/server/AccelerometerReader;->orientation:Lx/org/server/AccelerometerReader$OrientationListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
