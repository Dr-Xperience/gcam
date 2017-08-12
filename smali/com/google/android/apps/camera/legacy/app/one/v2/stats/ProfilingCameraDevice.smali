.class public final Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;
.super Ljava/lang/Object;
.source "ProfilingCameraDevice.java"

# interfaces
.implements Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;


# instance fields
.field private final cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/legacy/app/stats/CameraDeviceInstrumentationSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    invoke-interface {v0}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->close()V

    return-void
.end method

.method public final createCaptureRequest(I)Lcom/google/android/libraries/camera/proxy/hardware/camera2/CaptureRequestBuilderProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createCaptureRequest(I)Lcom/google/android/libraries/camera/proxy/hardware/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    return-object v0
.end method

.method public final createCaptureSession(Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->instance()Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->captureSession$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRCCLJM2ORP5TGN0S1FEDQ62T3J5T4MSSRKE9QMQPBEEHGN8QBFDP9MASRJD5NMSKJ5CDNN4P35E8TG____0()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;->create()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    new-instance v2, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;

    invoke-direct {v2, p2, v0}, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;-><init>(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v1, p1, v2, p3}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createCaptureSession(Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/params/OutputConfigurationProxy;",
            ">;",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->instance()Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->captureSession$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRCCLJM2ORP5TGN0S1FEDQ62T3J5T4MSSRKE9QMQPBEEHGN8QBFDP9MASRJD5NMSKJ5CDNN4P35E8TG____0()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;->create()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    new-instance v2, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;

    invoke-direct {v2, p2, v0}, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;-><init>(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v1, p1, v2, p3}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraConstrainedHighSpeedCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final createReprocessCaptureRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5THM2RB5E9GIUS3IDTS7IBR8C5P68TR1E9IIUOR1DLIN4O9I5TA6UT31DH1M2S3KELP6AKJ5EDQMOT2GE9NNGU9R55666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5THM2RB5E9GIUS3IDTS7IBR8C5P68TR1E9IIUOR1DLIN4O9I5T1M2S3KELP6AKJ5E5QMASRK89QMIR34CLP50SJFF1SJM___0(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CaptureResultProxy;)Lcom/google/android/libraries/camera/proxy/hardware/camera2/CaptureRequestBuilderProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createReprocessCaptureRequest$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5THM2RB5E9GIUS3IDTS7IBR8C5P68TR1E9IIUOR1DLIN4O9I5TA6UT31DH1M2S3KELP6AKJ5EDQMOT2GE9NNGU9R55666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5THM2RB5E9GIUS3IDTS7IBR8C5P68TR1E9IIUOR1DLIN4O9I5T1M2S3KELP6AKJ5E5QMASRK89QMIR34CLP50SJFF1SJM___0(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CaptureResultProxy;)Lcom/google/android/libraries/camera/proxy/hardware/camera2/CaptureRequestBuilderProxy;

    move-result-object v0

    return-object v0
.end method

.method public final createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->instance()Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->captureSession$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRCCLJM2ORP5TGN0S1FEDQ62T3J5T4MSSRKE9QMQPBEEHGN8QBFDP9MASRJD5NMSKJ5CDNN4P35E8TG____0()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;->create()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    new-instance v2, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;

    invoke-direct {v2, p3, v0}, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;-><init>(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v1, p1, p2, v2, p4}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/params/OutputConfigurationProxy;",
            ">;",
            "Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/camera/errors/ResourceUnavailableException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->instance()Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/Instrumentation;->captureSession$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRCCLJM2ORP5TGN0S1FEDQ62T3J5T4MSSRKE9QMQPBEEHGN8QBFDP9MASRJD5NMSKJ5CDNN4P35E8TG____0()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSessionCloseHandler;->create()Lcom/google/android/apps/camera/legacy/app/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;

    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice;->cameraDeviceProxy:Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;

    new-instance v2, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;

    invoke-direct {v2, p3, v0}, Lcom/google/android/apps/camera/legacy/app/one/v2/stats/ProfilingCameraDevice$ProfilingCaptureSessionStateCallback;-><init>(Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Lcom/google/android/apps/camera/legacy/app/stats/CameraCaptureSessionInstrumentationSession;)V

    invoke-interface {v1, p1, p2, v2, p4}, Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraDeviceProxy;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/google/android/libraries/camera/proxy/hardware/camera2/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    return-void
.end method