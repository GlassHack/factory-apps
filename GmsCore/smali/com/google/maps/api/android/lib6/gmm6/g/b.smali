.class public final Lcom/google/maps/api/android/lib6/gmm6/g/b;
.super Lcom/google/maps/api/android/lib6/gmm6/g/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/g/c;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/g/b;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/g/b;->b:I

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/g/b;->c:I

    :cond_0
    return-void
.end method
