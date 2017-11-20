.class public final Lcom/google/android/gms/clearcut/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/clearcut/e;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/a/a;->a:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method static a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    iget-object v0, v0, Lcom/google/n/a/b/a/a/i;->h:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/d;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/b/a/a/i;->h:[B

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    .line 173
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/y;
    .locals 1

    .prologue
    .line 113
    invoke-static {p2}, Lcom/google/android/gms/clearcut/a/a;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    .line 114
    new-instance v0, Lcom/google/android/gms/clearcut/a/c;

    invoke-direct {v0, p2}, Lcom/google/android/gms/clearcut/a/c;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0
.end method
