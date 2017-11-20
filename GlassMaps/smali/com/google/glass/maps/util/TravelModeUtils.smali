.class public Lcom/google/glass/maps/util/TravelModeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_LAST_TRAVEL_MODE:Ljava/lang/String; = "lastTravelMode"

.field private static final NAVIGATION_PREFERENCES:Ljava/lang/String; = "navigation"

.field private static final UNINITIALIZED:I = -0x1

.field private static travelMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRoutingErrorForCurrentTravelMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    if-nez v0, :cond_0

    .line 48
    sget v0, Lcom/google/glass/maps/R$string;->error_routing_error_driving:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 50
    sget v0, Lcom/google/glass/maps/R$string;->error_routing_error_walking:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 52
    sget v0, Lcom/google/glass/maps/R$string;->error_routing_error_biking:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_2
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 54
    sget v0, Lcom/google/glass/maps/R$string;->error_routing_error_transit:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_3
    sget v0, Lcom/google/glass/maps/R$string;->error_routing_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSavedTravelMode(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v0, "navigation"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastTravelMode"

    .line 67
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTravelMode(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 21
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 22
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getSavedTravelMode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    .line 24
    :cond_0
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    return v0
.end method

.method private static saveTravelMode(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "navigation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastTravelMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    return-void
.end method

.method public static setTravelMode(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 32
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lcom/google/glass/maps/util/TravelModeUtils;->saveTravelMode(Landroid/content/Context;I)V

    .line 37
    sput p1, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    .line 41
    :goto_0
    sget v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    return v0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getSavedTravelMode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/glass/maps/util/TravelModeUtils;->travelMode:I

    goto :goto_0
.end method
