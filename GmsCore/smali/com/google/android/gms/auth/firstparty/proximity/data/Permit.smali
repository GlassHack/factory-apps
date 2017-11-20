.class public Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/e;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

.field f:Ljava/util/List;

.field final g:Ljava/util/Map;

.field h:Ljava/util/List;

.field final i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/e;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 186
    invoke-static {p6}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V

    .line 188
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->a:I

    .line 212
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b:Ljava/lang/String;

    .line 213
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c:Ljava/lang/String;

    .line 214
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d:Ljava/lang/String;

    .line 215
    invoke-static {p5}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 216
    if-nez p6, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    .line 218
    if-nez p7, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->i:Ljava/util/Set;

    .line 220
    return-void

    .line 216
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 218
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/data/c;)V
    .locals 8

    .prologue
    .line 164
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->d:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iget-object v6, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->e:Ljava/util/Map;

    iget-object v7, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->f:Ljava/util/Set;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Ljava/util/Map;Ljava/util/Set;)V

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/firstparty/proximity/data/c;B)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/data/c;)V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 324
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 325
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 326
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->i:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 286
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 290
    goto :goto_0

    .line 292
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    if-eqz v2, :cond_0

    .line 296
    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    .line 298
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->i:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->i:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 307
    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 315
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->e:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->f:Ljava/util/List;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->i:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;->h:Ljava/util/List;

    .line 281
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/e;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;Landroid/os/Parcel;I)V

    .line 282
    return-void
.end method
