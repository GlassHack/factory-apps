.class public final Lcom/google/android/maps/driveabout/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/maps/driveabout/util/t;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/google/android/maps/driveabout/util/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/maps/driveabout/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/maps/driveabout/util/s;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/util/r;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/maps/driveabout/util/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/util/t;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/maps/driveabout/util/t;

    .line 98
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/maps/driveabout/util/t;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/maps/driveabout/util/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/maps/driveabout/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/maps/driveabout/util/s;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/maps/driveabout/util/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
