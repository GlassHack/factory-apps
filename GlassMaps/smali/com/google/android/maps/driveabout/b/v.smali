.class public final Lcom/google/android/maps/driveabout/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/b/v;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/google/android/maps/driveabout/b/v;->a:Z

    if-eqz v0, :cond_0

    .line 176
    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 142
    if-eqz p1, :cond_0

    const-string v0, "t"

    :goto_0
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 142
    :cond_0
    const-string v0, "f"

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 116
    sput-boolean p0, Lcom/google/android/maps/driveabout/b/v;->a:Z

    .line 117
    return-void
.end method
