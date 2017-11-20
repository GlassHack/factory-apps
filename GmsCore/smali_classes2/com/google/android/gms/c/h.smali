.class public Lcom/google/android/gms/c/h;
.super Lcom/google/android/gms/c/g;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final m()J
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/cache"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0

    return-wide v0
.end method
