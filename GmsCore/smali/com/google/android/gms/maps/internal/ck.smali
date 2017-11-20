.class public final Lcom/google/android/gms/maps/internal/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/maps/internal/ck;->a:Z

    return-void
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 28
    const v0, 0x2f4d60

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/maps/internal/ck;->a:Z

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/google/android/gms/maps/internal/ck;->a:Z

    return v0
.end method
