.class Lcom/google/android/glass/gcamservice/GcamModule$1;
.super Ljava/lang/Object;
.source "GcamModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/gcamservice/GcamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/glass/gcamservice/GcamModule;


# direct methods
.method constructor <init>(Lcom/google/android/glass/gcamservice/GcamModule;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/glass/gcamservice/GcamModule$1;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/google/android/glass/gcamservice/GcamModule$1;->this$0:Lcom/google/android/glass/gcamservice/GcamModule;

    invoke-static {v1}, Lcom/google/android/glass/gcamservice/GcamModule;->access$000(Lcom/google/android/glass/gcamservice/GcamModule;)Lcom/google/android/glass/gcamservice/IGcamModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/glass/gcamservice/IGcamModule;->warmUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GcamModule"

    const-string v2, "RemoteException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
