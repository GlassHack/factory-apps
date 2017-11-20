.class public abstract Lcom/google/android/maps/driveabout/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/c;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final queueIdle()Z
    .locals 2

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/util/c;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    const/4 v0, 0x0

    return v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw v0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/c;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method
