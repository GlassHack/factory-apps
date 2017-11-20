.class Lcom/google/glass/maps/map/SimpleTileFetcher$2;
.super Landroid/util/LruCache;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/map/SimpleTileFetcher;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/map/SimpleTileFetcher;I)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher$2;->this$0:Lcom/google/glass/maps/map/SimpleTileFetcher;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTile;Lcom/google/glass/maps/map/MiniMapTile;)V
    .locals 1

    .prologue
    .line 65
    if-eqz p3, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher$2;->this$0:Lcom/google/glass/maps/map/SimpleTileFetcher;

    invoke-static {v0, p3}, Lcom/google/glass/maps/map/SimpleTileFetcher;->access$100(Lcom/google/glass/maps/map/SimpleTileFetcher;Lcom/google/glass/maps/map/MiniMapTile;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p2, Lcom/google/android/maps/driveabout/model/aw;

    check-cast p3, Lcom/google/glass/maps/map/MiniMapTile;

    check-cast p4, Lcom/google/glass/maps/map/MiniMapTile;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/map/SimpleTileFetcher$2;->entryRemoved(ZLcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTile;Lcom/google/glass/maps/map/MiniMapTile;)V

    return-void
.end method
