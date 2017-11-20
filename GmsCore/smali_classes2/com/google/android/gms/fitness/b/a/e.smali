.class public final Lcom/google/android/gms/fitness/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/e;


# instance fields
.field public final a:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    .line 91
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/b/b;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/a/a;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/a;-><init>(Lcom/google/android/gms/fitness/data/Application;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/fitness/b/h;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized data source type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    .line 120
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/fitness/b/h;->b:Lcom/google/android/gms/fitness/b/h;

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    check-cast p1, Lcom/google/android/gms/fitness/b/a/e;

    .line 148
    iget-object v2, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 149
    goto :goto_0

    .line 148
    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final f()Lcom/google/android/gms/fitness/b/i;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/a/l;

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/a/l;-><init>(Lcom/google/android/gms/fitness/data/Device;)V

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
