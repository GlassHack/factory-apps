.class final Lcom/google/maps/api/android/lib6/c/dx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/cd;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/dw;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dx;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dx;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->a(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/bu;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bd:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dx;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->b(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/cw;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/cw;->a(F)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dx;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->a(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/bu;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->be:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dx;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->b(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/cw;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/cw;->a(F)V

    return-void
.end method
