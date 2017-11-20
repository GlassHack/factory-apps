.class public final Lcom/google/android/maps/driveabout/store/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->a:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->b:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/model/ao;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ao;

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ao;Lcom/google/android/maps/driveabout/model/ag;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method
