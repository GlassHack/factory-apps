.class final Lcom/google/android/maps/driveabout/store/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bt;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/store/i;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/i;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/l;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleTile(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 1

    .prologue
    .line 1139
    if-nez p2, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/l;->a:Lcom/google/android/maps/driveabout/store/i;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/store/i;Lcom/google/android/maps/driveabout/model/aw;)V

    .line 1142
    :cond_0
    return-void
.end method
