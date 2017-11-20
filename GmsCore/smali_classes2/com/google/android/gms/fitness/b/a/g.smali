.class public final Lcom/google/android/gms/fitness/b/a/g;
.super Lcom/google/android/gms/fitness/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/f;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/data/h;

.field private b:Lcom/google/android/gms/fitness/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/a;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->b:Lcom/google/android/gms/fitness/b/a/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/android/gms/fitness/b/e;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/google/android/gms/fitness/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/e;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a/g;->b()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a/g;->b()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->b:Lcom/google/android/gms/fitness/b/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/fitness/b/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->b:Lcom/google/android/gms/fitness/b/a/b;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->b:Lcom/google/android/gms/fitness/b/a/b;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/a/b;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/a/b;->a:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/a/g;->b(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/a/g;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/a/g;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a/g;->b()V

    .line 59
    sget-object v0, Lcom/google/android/gms/fitness/b/a/f;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/b/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-object p0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/a/g;->d(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/a/g;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a/g;->b()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/k;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    .line 39
    return-object p0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->b:Lcom/google/android/gms/fitness/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/g;->b:Lcom/google/android/gms/fitness/b/a/b;

    new-instance v2, Lcom/google/android/gms/fitness/b/a/a;

    new-instance v3, Lcom/google/android/gms/fitness/data/Application;

    iget-object v4, v1, Lcom/google/android/gms/fitness/b/a/b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/fitness/b/a/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v3, v4, v1}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/b/a/a;-><init>(Lcom/google/android/gms/fitness/data/Application;)V

    iget-object v1, v2, Lcom/google/android/gms/fitness/b/a/a;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/a/e;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/e;-><init>(Lcom/google/android/gms/fitness/data/DataSource;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/a/g;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a/g;->b()V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/g;->a:Lcom/google/android/gms/fitness/data/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    .line 46
    return-object p0
.end method
