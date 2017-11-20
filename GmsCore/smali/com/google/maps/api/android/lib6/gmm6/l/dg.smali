.class public final Lcom/google/maps/api/android/lib6/gmm6/l/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field public b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field private final c:Ljava/lang/String;

.field private d:I

.field private final e:[I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->d:I

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->e:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->d:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->e:[I

    return-object v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/dg;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
