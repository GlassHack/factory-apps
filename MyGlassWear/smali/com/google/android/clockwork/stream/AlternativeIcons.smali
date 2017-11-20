.class public Lcom/google/android/clockwork/stream/AlternativeIcons;
.super Ljava/lang/Object;
.source "AlternativeIcons.java"


# static fields
.field public static final EXTRA_ACTION_ICON_BITMAP:Ljava/lang/String; = "com.google.android.wearable.stream.ACTION_ICON_BITMAP"

.field public static final EXTRA_CONTENT_ICON_BITMAP:Ljava/lang/String; = "com.google.android.wearable.stream.CONTENT_ICON_BITMAP"

.field public static final EXTRA_ICON_BITMAP:Ljava/lang/String; = "com.google.android.wearable.stream.ICON_BITMAP"

.field private static final TAG:Ljava/lang/String; = "AlternativeIcons"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconBitmap(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "alternativeExtraKey"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p3, :cond_0

    .line 47
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 48
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 61
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AlternativeIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get package context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasIcon(ILandroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p0, "icon"    # I
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "alternativeExtraKey"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
