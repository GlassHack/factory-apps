.class Lcom/google/glass/maps/map/SimpleTileFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bt;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/map/SimpleTileFetcher;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/map/SimpleTileFetcher;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/maps/map/SimpleTileFetcher$1;->this$0:Lcom/google/glass/maps/map/SimpleTileFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTile(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/maps/map/SimpleTileFetcher$1;->this$0:Lcom/google/glass/maps/map/SimpleTileFetcher;

    invoke-static {v0, p1, p2, p3}, Lcom/google/glass/maps/map/SimpleTileFetcher;->access$000(Lcom/google/glass/maps/map/SimpleTileFetcher;Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V

    .line 47
    return-void
.end method
