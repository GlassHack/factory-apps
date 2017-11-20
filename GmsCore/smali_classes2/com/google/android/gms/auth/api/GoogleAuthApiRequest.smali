.class public Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/api/i;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Landroid/os/Bundle;

.field g:Ljava/lang/String;

.field h:Ljava/util/List;

.field i:Ljava/lang/String;

.field j:I

.field k:Landroid/os/Bundle;

.field l:[B

.field m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/auth/api/i;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->CREATOR:Lcom/google/android/gms/auth/api/i;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Bundle;[BJ)V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->a:I

    .line 327
    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->b:Ljava/lang/String;

    .line 328
    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c:Ljava/lang/String;

    .line 329
    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->d:Ljava/lang/String;

    .line 330
    iput-object p5, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->e:Ljava/lang/String;

    .line 331
    iput-object p6, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f:Landroid/os/Bundle;

    .line 332
    iput-object p7, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->g:Ljava/lang/String;

    .line 333
    iput-object p8, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/util/List;

    .line 334
    iput-object p9, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/lang/String;

    .line 335
    iput p10, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->j:I

    .line 336
    iput-object p11, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->k:Landroid/os/Bundle;

    .line 337
    iput-object p12, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->l:[B

    .line 338
    iput-wide p13, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->m:J

    .line 339
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 196
    :goto_0
    if-nez v0, :cond_3

    move-object v0, v2

    .line 200
    :goto_1
    return-object v0

    .line 195
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final g()Ljava/util/Map;
    .locals 4

    .prologue
    .line 212
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    :cond_0
    return-object v1
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->j:I

    return v0
.end method

.method public final i()Ljava/util/Map;
    .locals 4

    .prologue
    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->k:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_0
    return-object v1
.end method

.method public final j()[B
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->l:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ API: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 308
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/i;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;Landroid/os/Parcel;)V

    .line 309
    return-void
.end method
