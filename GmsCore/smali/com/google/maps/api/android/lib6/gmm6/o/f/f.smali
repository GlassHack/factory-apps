.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/f/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# instance fields
.field protected b:Z

.field final c:Lcom/google/maps/api/android/lib6/gmm6/o/f/g;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/g;->values()[Lcom/google/maps/api/android/lib6/gmm6/o/f/g;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/f;->a:I

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/f/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/g;->a()I

    return-void
.end method

.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/f/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/f;->b:Z

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/f;->d:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/f;->c:Lcom/google/maps/api/android/lib6/gmm6/o/f/g;

    return-void
.end method
