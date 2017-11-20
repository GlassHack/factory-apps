.class public final Lcom/google/android/gms/people/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/people/t;

.field final synthetic b:Lcom/google/android/gms/people/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/q;Lcom/google/android/gms/people/t;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/gms/people/r;->b:Lcom/google/android/gms/people/q;

    iput-object p2, p0, Lcom/google/android/gms/people/r;->a:Lcom/google/android/gms/people/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 799
    check-cast p1, Lcom/google/android/gms/people/g;

    iget-object v0, p0, Lcom/google/android/gms/people/r;->a:Lcom/google/android/gms/people/t;

    invoke-interface {p1}, Lcom/google/android/gms/people/g;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->g()Lcom/google/android/gms/common/b;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/g;->h_()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/t;->a(Lcom/google/android/gms/common/b;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
