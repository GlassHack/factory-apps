.class final Lcom/google/android/gms/maps/d;
.super Lcom/google/android/gms/maps/internal/bf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/k;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/google/android/gms/maps/d;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/k;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/bf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/e/i;)V
    .locals 2

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/k;

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/k;->a(Landroid/location/Location;)V

    .line 1196
    return-void
.end method
