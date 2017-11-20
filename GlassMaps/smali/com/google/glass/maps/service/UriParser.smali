.class public Lcom/google/glass/maps/service/UriParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMPONENT_SEPARATOR:C = ','

.field private static final PARAM_CENTER:Ljava/lang/String; = "center"

.field private static final PARAM_HEIGHT:Ljava/lang/String; = "h"

.field private static final PARAM_MARKER:Ljava/lang/String; = "marker"

.field private static final PARAM_POLYLINE:Ljava/lang/String; = "polyline"

.field private static final PARAM_SPAN:Ljava/lang/String; = "span"

.field private static final PARAM_WIDTH:Ljava/lang/String; = "w"

.field private static final PARAM_ZOOM:Ljava/lang/String; = "zoom"

.field private static final SECTION_SEPARATOR:C = ';'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parse(Landroid/net/Uri;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {p1}, Lcom/google/glass/maps/MapHelper;->isGlassMapUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unhandled URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    new-instance v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 65
    const-string v0, "w"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "w"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseNumber(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setWidth(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 71
    :cond_1
    const-string v0, "h"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "h"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseNumber(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setHeight(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 77
    :cond_2
    const-string v0, "center"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 78
    const-string v0, "center"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseLatLng(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setCenter(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 83
    :cond_3
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseNumber(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setZoom(F)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 89
    :cond_4
    const-string v0, "span"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 90
    const-string v0, "span"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseLatLng(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setLatSpan(D)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 93
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getLng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setLngSpan(D)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 96
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const-string v0, "marker"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseMarker(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_7
    new-array v0, v4, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const-string v0, "polyline"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parsePolyline(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_9
    new-array v0, v4, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 113
    return-object v1
.end method

.method private static parseLatLng(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 194
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lcom/google/glass/maps/service/UriParser;->split(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    .line 195
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move-object v0, v1

    .line 204
    :goto_0
    return-object v0

    .line 199
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    .line 200
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 201
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 202
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static parseLatLngList(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 209
    const/16 v2, 0x2c

    invoke-static {p0, v2}, Lcom/google/glass/maps/service/UriParser;->split(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v5

    .line 210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    move-object v0, v1

    .line 224
    :goto_0
    return-object v0

    .line 214
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v0

    .line 216
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    .line 217
    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    .line 218
    add-int/lit8 v7, v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 219
    add-int/lit8 v4, v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 220
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 222
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static parseMarker(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 117
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lcom/google/glass/maps/service/UriParser;->split(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-static {v0, v3}, Lcom/google/glass/maps/service/UriParser;->split(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    .line 123
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseLatLng(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    move-object v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    .line 129
    invoke-virtual {v2, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 130
    invoke-virtual {v2, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setLocation(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 135
    :try_start_0
    const-class v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker$MarkerType;

    invoke-static {v0}, Lcom/google/glass/protobuf/ProtoEnumUtils;->getEnumValues(Ljava/lang/Class;)[I

    move-result-object v4

    .line 136
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    if-ltz v0, :cond_2

    array-length v3, v4

    if-lt v0, v3, :cond_3

    :cond_2
    move-object v0, v1

    .line 138
    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {v2, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v2

    .line 148
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static parseNumber(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 187
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePolyline(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lcom/google/glass/maps/service/UriParser;->split(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_0

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-static {v0, v3}, Lcom/google/glass/maps/service/UriParser;->split(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/service/UriParser;->parseLatLngList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_2

    :cond_1
    move-object v0, v1

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    new-instance v1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    .line 164
    new-array v2, v4, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, v1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->setWidth(F)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->setColorArgb(I)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    move-object v0, v1

    .line 182
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static split(Ljava/lang/String;C)Ljava/util/List;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 230
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_0
    return-object v1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1

    .prologue
    .line 55
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/service/UriParser;->parse(Landroid/net/Uri;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method
