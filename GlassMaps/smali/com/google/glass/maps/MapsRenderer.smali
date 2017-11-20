.class public Lcom/google/glass/maps/MapsRenderer;
.super Lcom/google/glass/maps/map/MiniMapRenderer;
.source "SourceFile"


# static fields
.field public static final MINI_MAP_DEFAULT_ZOOM:F = 16.0f

.field public static final MINI_MAP_MAX_ZOOM:F = 17.0f


# instance fields
.field private final externalState:Lcom/google/glass/maps/MapsRenderer$State;

.field private markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

.field private final miniMapMarkers:Ljava/util/List;

.field private final miniMapPolylines:Ljava/util/List;

.field private polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

.field private final renderState:Lcom/google/glass/maps/MapsRenderer$State;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 107
    invoke-static {}, Lcom/google/glass/maps/MapsRenderer;->createTheme()Lcom/google/glass/maps/map/MiniMapTheme;

    move-result-object v5

    sget v6, Lcom/google/glass/maps/R$drawable;->maps_markers:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/maps/map/MiniMapRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;IILcom/google/glass/maps/map/MiniMapTheme;I)V

    .line 92
    new-instance v0, Lcom/google/glass/maps/MapsRenderer$State;

    invoke-direct {v0, v7}, Lcom/google/glass/maps/MapsRenderer$State;-><init>(Lcom/google/glass/maps/MapsRenderer$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->externalState:Lcom/google/glass/maps/MapsRenderer$State;

    .line 95
    new-instance v0, Lcom/google/glass/maps/MapsRenderer$State;

    invoke-direct {v0, v7}, Lcom/google/glass/maps/MapsRenderer$State;-><init>(Lcom/google/glass/maps/MapsRenderer$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->renderState:Lcom/google/glass/maps/MapsRenderer$State;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapMarkers:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapPolylines:Ljava/util/List;

    .line 108
    iput-object p2, p0, Lcom/google/glass/maps/MapsRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 109
    return-void
.end method

.method private static createTheme()Lcom/google/glass/maps/map/MiniMapTheme;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTheme;

    invoke-direct {v0}, Lcom/google/glass/maps/map/MiniMapTheme;-><init>()V

    .line 114
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadOutlineColor:I

    .line 115
    const v1, 0x3fa66666    # 1.3f

    iput v1, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadWidthScaleFactor:F

    .line 116
    return-object v0
.end method

.method private declared-synchronized snapshotState()Lcom/google/glass/maps/MapsRenderer$State;
    .locals 2

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->renderState:Lcom/google/glass/maps/MapsRenderer$State;

    iget-object v1, p0, Lcom/google/glass/maps/MapsRenderer;->externalState:Lcom/google/glass/maps/MapsRenderer$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/MapsRenderer$State;->snapshotFrom(Lcom/google/glass/maps/MapsRenderer$State;)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->renderState:Lcom/google/glass/maps/MapsRenderer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateMiniMap(Lcom/google/glass/maps/MapsRenderer$State;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/google/glass/maps/MapsRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v2

    .line 176
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    invoke-static {p1}, Lcom/google/glass/maps/MapsRenderer$State;->access$100(Lcom/google/glass/maps/MapsRenderer$State;)[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 177
    invoke-static {p1}, Lcom/google/glass/maps/MapsRenderer$State;->access$100(Lcom/google/glass/maps/MapsRenderer$State;)[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    .line 179
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapMarker;

    .line 180
    invoke-virtual {v2, v0}, Lcom/google/glass/maps/map/MiniMap;->removeMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    if-eqz v0, :cond_1

    .line 185
    iget-object v3, p0, Lcom/google/glass/maps/MapsRenderer;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 186
    new-instance v6, Lcom/google/glass/maps/map/MiniMapMarker;

    iget-object v7, v5, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;->location:Lcom/google/android/maps/driveabout/model/ab;

    iget v5, v5, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;->type:I

    invoke-direct {v6, v7, v5, v1, v1}, Lcom/google/glass/maps/map/MiniMapMarker;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIZ)V

    .line 187
    invoke-virtual {v2, v6}, Lcom/google/glass/maps/map/MiniMap;->addMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    .line 188
    iget-object v5, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapMarkers:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    invoke-static {p1}, Lcom/google/glass/maps/MapsRenderer$State;->access$200(Lcom/google/glass/maps/MapsRenderer$State;)[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 195
    invoke-static {p1}, Lcom/google/glass/maps/MapsRenderer$State;->access$200(Lcom/google/glass/maps/MapsRenderer$State;)[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    .line 197
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 198
    invoke-virtual {v2, v0}, Lcom/google/glass/maps/map/MiniMap;->removePolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    goto :goto_2

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    if-eqz v0, :cond_3

    .line 203
    iget-object v3, p0, Lcom/google/glass/maps/MapsRenderer;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v1, v3, v0

    .line 204
    new-instance v5, Lcom/google/glass/maps/map/MiniMapPolyline;

    iget-object v6, p0, Lcom/google/glass/maps/MapsRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    iget-object v7, v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    const/4 v8, 0x0

    .line 205
    invoke-static {v7, v8}, Lcom/google/glass/maps/map/TrafficPolylineFactory;->makeColorPolyLine(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v7

    iget v8, v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->width:F

    invoke-direct {v5, v6, v7, v8}, Lcom/google/glass/maps/map/MiniMapPolyline;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/ColorPolyline;F)V

    .line 206
    iget v1, v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->colorARGB:I

    invoke-virtual {v5, v1}, Lcom/google/glass/maps/map/MiniMapPolyline;->setColorARGB(I)V

    .line 207
    invoke-virtual {v2, v5}, Lcom/google/glass/maps/map/MiniMap;->addPolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    .line 208
    iget-object v1, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapPolylines:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 212
    :cond_3
    return-void
.end method


# virtual methods
.method public jumpTo(Lcom/google/android/maps/driveabout/model/ab;F)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 221
    new-instance v0, Lcom/google/glass/maps/map/CameraPosition;

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/MapsRenderer;->externalState:Lcom/google/glass/maps/MapsRenderer$State;

    invoke-static {v1, v0}, Lcom/google/glass/maps/MapsRenderer$State;->access$302(Lcom/google/glass/maps/MapsRenderer$State;Lcom/google/glass/maps/map/CameraPosition;)Lcom/google/glass/maps/map/CameraPosition;

    .line 224
    iget-object v1, p0, Lcom/google/glass/maps/MapsRenderer;->externalState:Lcom/google/glass/maps/MapsRenderer$State;

    invoke-static {v1, p2}, Lcom/google/glass/maps/MapsRenderer$State;->access$402(Lcom/google/glass/maps/MapsRenderer$State;F)F

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p0}, Lcom/google/glass/maps/MapsRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/glass/maps/MapsRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MiniMapController;->jumpTo(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 230
    :cond_0
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepareFrame(J)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/glass/maps/MapsRenderer;->snapshotState()Lcom/google/glass/maps/MapsRenderer$State;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/glass/maps/MapsRenderer$State;->access$300(Lcom/google/glass/maps/MapsRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/maps/MapsRenderer;->updateMiniMap(Lcom/google/glass/maps/MapsRenderer$State;)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMapRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->miniMapPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iput-object v1, p0, Lcom/google/glass/maps/MapsRenderer;->markerInfos:[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    .line 142
    iput-object v1, p0, Lcom/google/glass/maps/MapsRenderer;->polylineInfos:[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/maps/MapsRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/google/glass/maps/view/Animations$CosineInterpolator;

    invoke-direct {v1}, Lcom/google/glass/maps/view/Animations$CosineInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapController;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    new-instance v1, Lcom/google/glass/maps/view/Animations$CosineInterpolator;

    invoke-direct {v1}, Lcom/google/glass/maps/view/Animations$CosineInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapController;->setOrientationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    invoke-direct {p0}, Lcom/google/glass/maps/MapsRenderer;->snapshotState()Lcom/google/glass/maps/MapsRenderer$State;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lcom/google/glass/maps/MapsRenderer$State;->access$300(Lcom/google/glass/maps/MapsRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {v1}, Lcom/google/glass/maps/MapsRenderer$State;->access$300(Lcom/google/glass/maps/MapsRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapController;->jumpTo(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 157
    :cond_0
    return-void
.end method

.method public declared-synchronized setMarkers([Lcom/google/glass/maps/MapsRenderer$MarkerInfo;)V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->externalState:Lcom/google/glass/maps/MapsRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/MapsRenderer$State;->access$102(Lcom/google/glass/maps/MapsRenderer$State;[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;)[Lcom/google/glass/maps/MapsRenderer$MarkerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPolylines([Lcom/google/glass/maps/MapsRenderer$PolylineInfo;)V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapsRenderer;->externalState:Lcom/google/glass/maps/MapsRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/MapsRenderer$State;->access$202(Lcom/google/glass/maps/MapsRenderer$State;[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;)[Lcom/google/glass/maps/MapsRenderer$PolylineInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuppressLabels(Z)V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/glass/maps/MapsRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMap;->setSuppressLabels(Z)V

    .line 132
    return-void
.end method
