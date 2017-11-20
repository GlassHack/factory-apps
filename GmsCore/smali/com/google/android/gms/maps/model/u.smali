.class final Lcom/google/android/gms/maps/model/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/model/w;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field private final c:Lcom/google/android/gms/maps/model/a/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/maps/model/u;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/maps/model/u;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/u;->c:Lcom/google/android/gms/maps/model/a/ab;

    return-void
.end method


# virtual methods
.method public final a(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/u;->c:Lcom/google/android/gms/maps/model/a/ab;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/a/ab;->a(III)Lcom/google/android/gms/maps/model/Tile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
