.class final Lcom/google/android/gms/internal/dh$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/dm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/dm",
        "<",
        "Lcom/google/android/gms/internal/df;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic GS:Lcom/google/android/gms/internal/dh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/dh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dh$c;->GS:Lcom/google/android/gms/internal/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dh$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dh$c;-><init>(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method


# virtual methods
.method public V()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dh$c;->GS:Lcom/google/android/gms/internal/dh;

    invoke-static {v0}, Lcom/google/android/gms/internal/dh;->b(Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method public synthetic cM()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dh$c;->eH()Lcom/google/android/gms/internal/df;

    move-result-object v0

    return-object v0
.end method

.method public eH()Lcom/google/android/gms/internal/df;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dh$c;->GS:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/df;

    return-object v0
.end method
