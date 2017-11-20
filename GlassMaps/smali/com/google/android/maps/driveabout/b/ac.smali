.class final Lcom/google/android/maps/driveabout/b/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bt;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/z;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/ac;->a:Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/b/aa;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/ac;-><init>(Lcom/google/android/maps/driveabout/b/z;)V

    return-void
.end method


# virtual methods
.method public final handleTile(Lcom/google/android/maps/driveabout/model/aw;ILcom/google/android/maps/driveabout/model/av;)V
    .locals 4

    .prologue
    .line 262
    if-nez p3, :cond_0

    const/4 v0, 0x1

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/ac;->a:Lcom/google/android/maps/driveabout/b/z;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/b/z;->a(Lcom/google/android/maps/driveabout/b/z;IILjava/lang/Object;)V

    .line 264
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
