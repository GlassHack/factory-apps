.class public Lcom/google/glass/maps/directions/IconsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DIMENSION_PX:I = 0x1e

.field private static final TAG:Ljava/lang/String;

.field static iconsById:Ljava/util/Map;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/maps/directions/IconsCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/IconsCache;->TAG:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/IconsCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 24
    const/high16 v0, -0x80000000

    sput v0, Lcom/google/glass/maps/directions/IconsCache;->version:I

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedIconIds()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(J)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/google/glass/maps/directions/IconsCache;->version:I

    return v0
.end method

.method public static hasIcon(J)Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setIcon(Landroid/graphics/Bitmap;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x1e

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 82
    :cond_0
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Scaling directions bitmap (%sx%s) "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v5, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setIcon([BJ)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/glass/maps/directions/IconsCache;->setIcon(Landroid/graphics/Bitmap;J)V

    .line 70
    return-void
.end method

.method public static setVersion(I)V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/google/glass/maps/directions/IconsCache;->version:I

    if-ne v0, p0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    sput p0, Lcom/google/glass/maps/directions/IconsCache;->version:I

    .line 45
    sget-object v0, Lcom/google/glass/maps/directions/IconsCache;->iconsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method
