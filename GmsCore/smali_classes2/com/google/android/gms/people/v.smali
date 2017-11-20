.class public final Lcom/google/android/gms/people/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# instance fields
.field private final a:Lcom/google/android/gms/people/u;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/u;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/google/android/gms/people/v;->a:Lcom/google/android/gms/people/u;

    .line 238
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/people/u;B)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/v;-><init>(Lcom/google/android/gms/people/u;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 233
    check-cast p1, Lcom/google/android/gms/people/d;

    iget-object v0, p0, Lcom/google/android/gms/people/v;->a:Lcom/google/android/gms/people/u;

    invoke-interface {p1}, Lcom/google/android/gms/people/d;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->g()Lcom/google/android/gms/common/b;

    invoke-interface {p1}, Lcom/google/android/gms/people/d;->g_()Lcom/google/android/gms/people/model/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/people/u;->a(Lcom/google/android/gms/people/model/c;)V

    return-void
.end method
