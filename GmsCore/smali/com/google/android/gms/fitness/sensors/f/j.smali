.class final Lcom/google/android/gms/fitness/sensors/f/j;
.super Lcom/google/android/gms/fitness/h/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/DataSource;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/w;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/f/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/internal/w;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/j;->c:Lcom/google/android/gms/fitness/sensors/f/c;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/j;->a:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/f/j;->b:Lcom/google/android/gms/fitness/internal/w;

    invoke-direct {p0}, Lcom/google/android/gms/fitness/h/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method protected final synthetic a(Landroid/os/IInterface;)V
    .locals 2

    .prologue
    .line 238
    check-cast p1, Lcom/google/android/gms/fitness/internal/service/c;

    new-instance v0, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/j;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/j;->b:Lcom/google/android/gms/fitness/internal/w;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/fitness/internal/service/c;->a(Lcom/google/android/gms/fitness/internal/service/FitnessUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;)V

    return-void
.end method
