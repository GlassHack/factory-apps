.class public final Lcom/google/googlenav/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    .line 20
    sput-boolean v0, Lcom/google/googlenav/common/d;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/googlenav/common/d;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
