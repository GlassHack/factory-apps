.class final Lcom/google/android/location/places/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/android/location/places/b/j;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b/j;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/location/places/b/k;->c:Lcom/google/android/location/places/b/j;

    iput p2, p0, Lcom/google/android/location/places/b/k;->a:I

    iput-object p3, p0, Lcom/google/android/location/places/b/k;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/location/places/b/k;->c:Lcom/google/android/location/places/b/j;

    iget-object v0, v0, Lcom/google/android/location/places/b/j;->a:Lcom/google/android/location/places/b/f;

    iget v1, p0, Lcom/google/android/location/places/b/k;->a:I

    iget-object v2, p0, Lcom/google/android/location/places/b/k;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/places/b/f;->a(Lcom/google/android/location/places/b/f;ILjava/util/List;I)V

    .line 295
    return-void
.end method
