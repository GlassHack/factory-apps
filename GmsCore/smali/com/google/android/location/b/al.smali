.class final Lcom/google/android/location/b/al;
.super Lcom/google/android/location/b/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/b/af;

.field private b:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Lcom/google/android/location/b/af;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/android/location/b/al;->a:Lcom/google/android/location/b/af;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/b/ah;-><init>(B)V

    .line 500
    iput-object p2, p0, Lcom/google/android/location/b/al;->b:Ljava/util/Collection;

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/b/af;Ljava/util/Collection;B)V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/b/al;-><init>(Lcom/google/android/location/b/af;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/location/b/al;->a:Lcom/google/android/location/b/af;

    iget-object v1, p0, Lcom/google/android/location/b/al;->b:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/af;->b(Ljava/util/Collection;)V

    .line 506
    return-void
.end method
