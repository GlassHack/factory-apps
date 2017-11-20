.class public final Lcom/google/android/location/b/ab;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/location/b/ae;


# direct methods
.method public constructor <init>(Lcom/google/android/location/b/ae;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 709
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 710
    iput v2, p0, Lcom/google/android/location/b/ab;->a:I

    .line 711
    iput-object p1, p0, Lcom/google/android/location/b/ab;->b:Lcom/google/android/location/b/ae;

    .line 712
    return-void
.end method

.method public static synthetic a(Lcom/google/android/location/b/ab;)I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/google/android/location/b/ab;->a:I

    return v0
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/google/android/location/b/ab;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/b/ab;->a:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 717
    :goto_0
    if-eqz v0, :cond_0

    .line 718
    iget-object v1, p0, Lcom/google/android/location/b/ab;->b:Lcom/google/android/location/b/ae;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/location/b/ae;->a(I)V

    .line 720
    :cond_0
    return v0

    .line 716
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
