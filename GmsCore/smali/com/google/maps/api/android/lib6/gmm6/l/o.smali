.class public final Lcom/google/maps/api/android/lib6/gmm6/l/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public final a:[B

.field public final b:[I

.field private final c:I

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/x;


# direct methods
.method public constructor <init>([BILcom/google/maps/api/android/lib6/gmm6/l/x;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->a:[B

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->c:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->b:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/a/a/a;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->c:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->b:[I

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/o;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x24

    return v0
.end method
