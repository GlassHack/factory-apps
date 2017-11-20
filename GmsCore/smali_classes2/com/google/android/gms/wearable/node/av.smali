.class public final Lcom/google/android/gms/wearable/node/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/wearable/node/au;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/node/au;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
