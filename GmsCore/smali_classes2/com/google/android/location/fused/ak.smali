.class public final Lcom/google/android/location/fused/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/ap;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/location/fused/ap;

.field private final c:Lcom/google/android/location/fused/ap;

.field private d:Lcom/google/android/location/fused/ap;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/fused/ap;Lcom/google/android/location/fused/ap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/google/android/location/fused/ak;->e:Z

    .line 29
    iput-boolean v0, p0, Lcom/google/android/location/fused/ak;->f:Z

    .line 35
    iput-object p1, p0, Lcom/google/android/location/fused/ak;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    .line 37
    iput-object p3, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    .line 38
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    iput-object v0, p0, Lcom/google/android/location/fused/ak;->d:Lcom/google/android/location/fused/ap;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->d:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/ap;->a(Z)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/google/android/location/x;->B:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 47
    if-nez v2, :cond_4

    sget-object v0, Lcom/google/android/location/x;->A:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    iput-object v2, p0, Lcom/google/android/location/fused/ak;->d:Lcom/google/android/location/fused/ap;

    .line 54
    packed-switch v0, :pswitch_data_0

    move v4, v3

    move v3, v1

    move v1, v4

    .line 69
    :goto_1
    invoke-static {v1}, Lcom/google/android/location/fused/service/a;->a(Z)V

    .line 70
    iget-boolean v0, p0, Lcom/google/android/location/fused/ak;->e:Z

    if-eq v3, v0, :cond_0

    .line 71
    iput-boolean v3, p0, Lcom/google/android/location/fused/ak;->e:Z

    .line 72
    if-eqz v3, :cond_2

    .line 73
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 78
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/location/fused/ak;->f:Z

    if-eq v1, v0, :cond_1

    .line 79
    iput-boolean v1, p0, Lcom/google/android/location/fused/ak;->f:Z

    .line 80
    if-eqz v1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->a()V

    .line 86
    :cond_1
    :goto_3
    return-void

    :pswitch_0
    move v4, v3

    move v3, v1

    move v1, v4

    .line 58
    goto :goto_1

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    iput-object v0, p0, Lcom/google/android/location/fused/ak;->d:Lcom/google/android/location/fused/ap;

    goto :goto_1

    :pswitch_2
    move v3, v1

    .line 66
    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    goto :goto_2

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/location/fused/ak;->f:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/ak;->e:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Landroid/location/Location;I)V

    .line 130
    :cond_1
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->d:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/fused/ap;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/fused/ap;->a(Ljava/util/Collection;Z)V

    .line 106
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/google/android/location/fused/ak;->e:Z

    if-eqz v0, :cond_0

    .line 91
    iput-boolean v1, p0, Lcom/google/android/location/fused/ak;->e:Z

    .line 92
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/ak;->f:Z

    if-eqz v0, :cond_1

    .line 96
    iput-boolean v1, p0, Lcom/google/android/location/fused/ak;->f:Z

    .line 97
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->b()V

    .line 99
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    .line 112
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->c()V

    .line 113
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->b:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 119
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->c:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->d()V

    .line 120
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/location/fused/ak;->d:Lcom/google/android/location/fused/ap;

    invoke-interface {v0}, Lcom/google/android/location/fused/ap;->e()Lcom/google/android/location/o/k;

    move-result-object v0

    return-object v0
.end method
