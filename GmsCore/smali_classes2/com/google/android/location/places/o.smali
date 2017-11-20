.class final Lcom/google/android/location/places/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/aa;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/n;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/location/places/n;I)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/location/places/o;->a:Lcom/google/android/location/places/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p2, p0, Lcom/google/android/location/places/o;->b:I

    .line 317
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 321
    if-eqz p1, :cond_1

    .line 322
    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Place estimation failed, status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v0, "Places"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "Places"

    const-string v1, "Received place estimate"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/o;->a:Lcom/google/android/location/places/n;

    iget v1, p0, Lcom/google/android/location/places/o;->b:I

    invoke-static {v0, v1, p2}, Lcom/google/android/location/places/n;->a(Lcom/google/android/location/places/n;ILjava/util/List;)V

    goto :goto_0
.end method
