.class final Lcom/google/android/maps/driveabout/b/k;
.super Lcom/google/android/maps/driveabout/b/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/j;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected final c()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/k;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 83
    return v2
.end method

.method protected final d()Z
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/k;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method
