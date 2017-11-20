.class final Lcom/google/maps/api/android/lib6/b/aa;
.super Lcom/google/g/a/d/f;


# instance fields
.field private synthetic b:I

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/google/g/a/b/b/f;

.field private synthetic f:J

.field private synthetic g:Z


# direct methods
.method constructor <init>(Lcom/google/g/a/d/g;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput p2, p0, Lcom/google/maps/api/android/lib6/b/aa;->b:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/b/aa;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/b/aa;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/aa;->e:Lcom/google/g/a/b/b/f;

    iput-wide p5, p0, Lcom/google/maps/api/android/lib6/b/aa;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/aa;->g:Z

    invoke-direct {p0, p1}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 7

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/aa;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/aa;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/aa;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/b/aa;->e:Lcom/google/g/a/b/b/f;

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/b/aa;->f:J

    iget-boolean v6, p0, Lcom/google/maps/api/android/lib6/b/aa;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;Lcom/google/g/a/b/b/f;JZ)V

    return-void
.end method
