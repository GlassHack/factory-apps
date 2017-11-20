.class final Lcom/google/android/gms/location/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/internal/t;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/internal/p;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/internal/p;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/location/internal/q;->a:Lcom/google/android/gms/location/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/internal/p;B)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/internal/q;-><init>(Lcom/google/android/gms/location/internal/p;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/location/internal/q;->a:Lcom/google/android/gms/location/internal/p;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/internal/p;)V

    .line 89
    return-void
.end method

.method public final synthetic b()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/location/internal/q;->a:Lcom/google/android/gms/location/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/p;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    return-object v0
.end method
