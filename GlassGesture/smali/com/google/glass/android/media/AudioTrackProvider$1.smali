.class final Lcom/google/glass/android/media/AudioTrackProvider$1;
.super Ljava/lang/Object;
.source "AudioTrackProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/media/AudioTrackProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/media/AudioTrack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/media/AudioTrack;
    .locals 7

    .prologue
    .line 25
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 27
    invoke-static {}, Lcom/google/glass/android/media/AudioTrackProvider;->access$000()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/android/media/AudioTrackProvider$1;->get()Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
.end method
