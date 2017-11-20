.class public Lcom/google/android/gms/fitness/data/DataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/DataType;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/gms/fitness/data/Device;

.field private final f:Lcom/google/android/gms/fitness/data/Application;

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 529
    new-instance v0, Lcom/google/android/gms/fitness/data/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSource;->a:I

    .line 96
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 97
    iput p4, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    .line 98
    iput-object p3, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    .line 100
    iput-object p6, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    .line 101
    iput-object p7, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    .line 102
    iput-boolean p8, p0, Lcom/google/android/gms/fitness/data/DataSource;->h:Z

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->i:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/h;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->a:I

    .line 108
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    .line 109
    iget v0, p1, Lcom/google/android/gms/fitness/data/h;->b:I

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    .line 110
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    .line 112
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    .line 113
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/h;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    .line 114
    iget-boolean v0, p1, Lcom/google/android/gms/fitness/data/h;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->h:Z

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->i:Ljava/lang/String;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/h;B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/h;)V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 306
    const-string v0, ""

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 309
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, ", "

    move-object v1, v0

    .line 311
    goto :goto_0

    .line 312
    :cond_0
    return-object v2
.end method

.method private o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_0

    .line 205
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_1

    .line 208
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Device;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 211
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    packed-switch v0, :pswitch_data_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid type value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_0
    const-string v0, "raw"

    .line 323
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "derived"

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 9

    .prologue
    .line 485
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/google/android/gms/fitness/data/DataSource;->h:Z

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/fitness/data/Device;->a(Lcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Device;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSource;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/google/android/gms/fitness/data/Application;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 248
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/gms/fitness/data/Device;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Device;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_1

    .line 230
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->h:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    if-nez v0, :cond_0

    const-string v0, "r"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Device;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "d"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    sget-object v2, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/Application;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ":gms"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_3
.end method

.method public final l()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 9

    .prologue
    .line 497
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/google/android/gms/fitness/data/DataSource;->h:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    if-nez v1, :cond_0

    move-object v5, v0

    .line 509
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    if-nez v1, :cond_1

    move-object v6, v0

    .line 510
    :goto_1
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/fitness/data/DataSource;->d:I

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/fitness/internal/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gms/fitness/data/DataSource;->h:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(ILcom/google/android/gms/fitness/data/DataType;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/Application;Ljava/lang/String;Z)V

    return-object v0

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Device;->g()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v5

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->d()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v6

    goto :goto_1
.end method

.method final n()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSource{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/DataSource;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 270
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v1, :cond_1

    .line 273
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->f:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    if-eqz v1, :cond_2

    .line 276
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 279
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_3
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataSource;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 544
    invoke-static {p0}, Lcom/google/android/gms/fitness/internal/y;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 545
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/fitness/data/i;->a(Lcom/google/android/gms/fitness/data/DataSource;Landroid/os/Parcel;I)V

    .line 546
    return-void
.end method
