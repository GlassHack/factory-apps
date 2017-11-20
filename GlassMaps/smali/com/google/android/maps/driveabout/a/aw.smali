.class public final Lcom/google/android/maps/driveabout/a/aw;
.super Lcom/google/android/maps/driveabout/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 0

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1, p0}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 17
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
