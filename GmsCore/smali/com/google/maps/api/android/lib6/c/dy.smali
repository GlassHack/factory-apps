.class final Lcom/google/maps/api/android/lib6/c/dy;
.super Lcom/google/android/gms/maps/internal/aq;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/dr;

.field private synthetic b:Lcom/google/maps/api/android/lib6/c/ds;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/dr;Lcom/google/maps/api/android/lib6/c/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dy;->a:Lcom/google/maps/api/android/lib6/c/dr;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/dy;->b:Lcom/google/maps/api/android/lib6/c/ds;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dy;->a:Lcom/google/maps/api/android/lib6/c/dr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/dy;->b:Lcom/google/maps/api/android/lib6/c/ds;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/dr;->a(Lcom/google/maps/api/android/lib6/c/ds;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dy;->a:Lcom/google/maps/api/android/lib6/c/dr;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/dr;->b()V

    return-void
.end method
