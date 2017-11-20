.class final Lcom/google/android/location/os/real/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/ar;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/ar;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/location/os/real/as;->a:Lcom/google/android/location/os/real/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 30
    const-string v1, "nlp-async-worker"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method
