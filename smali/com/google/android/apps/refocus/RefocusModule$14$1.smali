.class final Lcom/google/android/apps/refocus/RefocusModule$14$1;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/refocus/RefocusModule$14;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule$14;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$14$1;->this$1:Lcom/google/android/apps/refocus/RefocusModule$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$14$1;->this$1:Lcom/google/android/apps/refocus/RefocusModule$14;

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule$14;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$14$1;->this$1:Lcom/google/android/apps/refocus/RefocusModule$14;

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule$14;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->startPreview(Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    :cond_0
    return-void
.end method