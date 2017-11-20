.class public final Lcom/google/android/maps/driveabout/model/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ar;->a:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/maps/driveabout/model/aq;->a()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/ar;
    .locals 5

    .prologue
    .line 31
    new-instance v1, Lcom/google/android/maps/driveabout/model/ar;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/model/ar;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 33
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 34
    iget-object v3, v1, Lcom/google/android/maps/driveabout/model/ar;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/google/android/maps/driveabout/model/aq;->a(ILjava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 74
    invoke-static {}, Lcom/google/android/maps/driveabout/model/aq;->a()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aq;

    goto :goto_0
.end method
