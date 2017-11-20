.class public final Lcom/google/android/gms/maps/g;
.super Lcom/google/android/gms/maps/internal/aw;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/j;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/j;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/g;->a:Lcom/google/android/gms/maps/j;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/a/p;)Z
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->a:Lcom/google/android/gms/maps/j;

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Lcom/google/android/gms/maps/model/a/p;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/j;->a(Lcom/google/android/gms/maps/model/j;)Z

    move-result v0

    return v0
.end method
