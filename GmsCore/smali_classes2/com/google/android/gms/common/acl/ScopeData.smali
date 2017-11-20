.class public final Lcom/google/android/gms/common/acl/ScopeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final a:Ljava/util/List;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Z

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/acl/ScopeData;->a:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/google/android/gms/common/acl/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/acl/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/acl/ScopeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->b:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->c:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->d:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->f:Z

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->g:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->h:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->i:Z

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->j:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->k:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->l:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->m:Z

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/common/acl/ScopeData;->n:Z

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 280
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    .line 283
    :goto_7
    if-ge v2, v3, :cond_7

    .line 284
    new-instance v4, Lcom/google/android/gms/auth/login/ao;

    invoke-direct {v4}, Lcom/google/android/gms/auth/login/ao;-><init>()V

    .line 285
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/login/ao;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ao;

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    :cond_1
    move v0, v2

    .line 270
    goto :goto_1

    :cond_2
    move v0, v2

    .line 271
    goto :goto_2

    :cond_3
    move v0, v2

    .line 272
    goto :goto_3

    :cond_4
    move v0, v2

    .line 273
    goto :goto_4

    :cond_5
    move v0, v2

    .line 274
    goto :goto_5

    :cond_6
    move v1, v2

    .line 275
    goto :goto_6

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/acl/ScopeData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZZLjava/util/List;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/google/android/gms/common/acl/ScopeData;->b:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/google/android/gms/common/acl/ScopeData;->c:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/google/android/gms/common/acl/ScopeData;->d:Ljava/lang/String;

    .line 249
    iput-object p4, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    .line 250
    iput-boolean p5, p0, Lcom/google/android/gms/common/acl/ScopeData;->f:Z

    .line 251
    iput-object p6, p0, Lcom/google/android/gms/common/acl/ScopeData;->g:Ljava/lang/String;

    .line 252
    iput-object p7, p0, Lcom/google/android/gms/common/acl/ScopeData;->h:Ljava/lang/String;

    .line 253
    iput-boolean p8, p0, Lcom/google/android/gms/common/acl/ScopeData;->i:Z

    .line 254
    iput-boolean p9, p0, Lcom/google/android/gms/common/acl/ScopeData;->j:Z

    .line 255
    iput-boolean p10, p0, Lcom/google/android/gms/common/acl/ScopeData;->k:Z

    .line 256
    iput-boolean p11, p0, Lcom/google/android/gms/common/acl/ScopeData;->l:Z

    .line 257
    iput-boolean p12, p0, Lcom/google/android/gms/common/acl/ScopeData;->m:Z

    .line 258
    iput-boolean p13, p0, Lcom/google/android/gms/common/acl/ScopeData;->n:Z

    .line 259
    invoke-static {p14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    .line 260
    return-void
.end method

.method static synthetic u()Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gms/common/acl/ScopeData;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/google/android/gms/common/acl/ScopeData;->m:Z

    .line 394
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/gms/common/acl/ScopeData;->g:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/google/android/gms/common/acl/ScopeData;->n:Z

    .line 402
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->f:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->i:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->j:Z

    .line 370
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->j:Z

    return v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->k:Z

    .line 378
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->k:Z

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->l:Z

    .line 386
    return-void
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->l:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->m:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->n:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/common/acl/ScopeData;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/ao;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    const-class v1, Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/common/acl/ScopeData;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string v1, "\n   p_acl_picker_data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/acl/ScopeData;->f:Z

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "\n   visible_edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v1, "\n   show_speedbump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 425
    const-string v1, "\n   has_show_circles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 426
    const-string v1, "\n   show_circles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 427
    const-string v1, "\n   show_contacts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 428
    const-string v1, "\n   all_circles_visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 429
    const-string v1, "\n   all_contacts_visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/acl/ScopeData;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    const-string v1, "\n   warnings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 434
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->i:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->j:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->k:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->l:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->m:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-boolean v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->n:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/common/acl/ScopeData;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/ao;

    .line 308
    iget-object v0, v0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_0
    move v0, v2

    .line 297
    goto :goto_0

    :cond_1
    move v0, v2

    .line 300
    goto :goto_1

    :cond_2
    move v0, v2

    .line 301
    goto :goto_2

    :cond_3
    move v0, v2

    .line 302
    goto :goto_3

    :cond_4
    move v0, v2

    .line 303
    goto :goto_4

    :cond_5
    move v0, v2

    .line 304
    goto :goto_5

    :cond_6
    move v1, v2

    .line 305
    goto :goto_6

    .line 310
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 311
    return-void
.end method
