.class public Lcom/google/android/location/reporting/config/Conditions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/location/reporting/config/g;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/location/reporting/config/g;

    invoke-direct {v0}, Lcom/google/android/location/reporting/config/g;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/config/Conditions;->CREATOR:Lcom/google/android/location/reporting/config/g;

    return-void
.end method

.method constructor <init>(IZZZZZZ)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/google/android/location/reporting/config/Conditions;->a:I

    .line 81
    iput-boolean p2, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    .line 82
    iput-boolean p4, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    .line 83
    iput-boolean p5, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    .line 84
    iput-boolean p3, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    .line 85
    iput-boolean p6, p0, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    .line 86
    iput-boolean p7, p0, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    .line 87
    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 8

    .prologue
    .line 91
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/reporting/config/Conditions;-><init>(IZZZZZZ)V

    .line 93
    return-void
.end method

.method public static a(Lcom/google/android/location/reporting/a/b;)Lcom/google/android/location/reporting/config/Conditions;
    .locals 7

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/location/reporting/config/Conditions;

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/google/android/location/places/bc;->a(Ljava/lang/Boolean;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/reporting/config/Conditions;-><init>(ZZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/location/reporting/a/b;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/location/reporting/a/b;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/b;-><init>()V

    .line 113
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    .line 114
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    .line 115
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    .line 116
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    .line 117
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    .line 118
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    .line 119
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/android/location/reporting/config/Conditions;->CREATOR:Lcom/google/android/location/reporting/config/g;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    if-ne p0, p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/reporting/config/Conditions;

    if-nez v2, :cond_2

    move v0, v1

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    check-cast p1, Lcom/google/android/location/reporting/config/Conditions;

    .line 224
    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    iget-boolean v3, p1, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/location/reporting/config/Conditions;->a:I

    iget v3, p1, Lcom/google/android/location/reporting/config/Conditions;->a:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    return v0
.end method

.method final h()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/google/android/location/reporting/config/Conditions;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/location/reporting/config/Conditions;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v2, 0x1

    const-string v3, "UnsupportedOs"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/16 v2, 0xb

    const-string v3, "RestrictedProfile"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v2, 0x3

    const-string v3, "UnsupportedGeo"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    if-eqz v1, :cond_3

    .line 265
    new-instance v1, Lcom/google/android/gms/location/reporting/InactiveReason;

    const/4 v2, 0x2

    const-string v3, "DeferringToGmm"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(ILjava/lang/String;)V

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_3
    return-object v0
.end method

.method public isIneligibleDueToGeoOnly()Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 284
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/Conditions;->i()Ljava/util/List;

    move-result-object v1

    .line 285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/InactiveReason;->a(Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/location/reporting/config/Conditions;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conditions{supportedOs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedGeo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deferToMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", googleLocationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/reporting/config/Conditions;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/reporting/config/Conditions;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/google/android/location/reporting/config/Conditions;->CREATOR:Lcom/google/android/location/reporting/config/g;

    invoke-static {p0, p1}, Lcom/google/android/location/reporting/config/g;->a(Lcom/google/android/location/reporting/config/Conditions;Landroid/os/Parcel;)V

    .line 297
    return-void
.end method
