.class public final Lcom/google/android/gms/common/people/data/AudienceMember;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final AUDIENCE_GROUP_DOMAIN:Ljava/lang/String; = "domain"

.field public static final AUDIENCE_GROUP_EXTENDED:Ljava/lang/String; = "extendedCircles"

.field public static final AUDIENCE_GROUP_PUBLIC:Ljava/lang/String; = "public"

.field public static final AUDIENCE_GROUP_YOUR_CIRCLES:Ljava/lang/String; = "myCircles"

.field public static final CREATOR:Lcom/google/android/gms/common/people/data/b;

.field public static final TYPE_CIRCLE:I = 0x1

.field public static final TYPE_PERSON:I = 0x2


# instance fields
.field private final Fq:I

.field private final UL:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final Xq:I

.field private final Xr:Ljava/lang/String;

.field private final Xs:Ljava/lang/String;

.field private final Xt:Ljava/lang/String;

.field private final Xu:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/b;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "type"    # I
    .param p3, "circleType"    # I
    .param p4, "circleId"    # Ljava/lang/String;
    .param p5, "peopleQualifiedId"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "avatarUrl"    # Ljava/lang/String;
    .param p8, "metadata"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    iput p3, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    iput-object p4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xr:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xs:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xt:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xu:Ljava/lang/String;

    if-eqz p8, :cond_0

    .end local p8    # "metadata":Landroid/os/Bundle;
    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->UL:Landroid/os/Bundle;

    return-void

    .restart local p8    # "metadata":Landroid/os/Bundle;
    :cond_0
    new-instance p8, Landroid/os/Bundle;

    .end local p8    # "metadata":Landroid/os/Bundle;
    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "circleType"    # I
    .param p3, "circleId"    # Ljava/lang/String;
    .param p4, "qualifiedPersonId"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "avatarUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static forCircle(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7
    .param p0, "circleId"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x1

    const/4 v2, -0x1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/rd;->aDU:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/rd;->aDU:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static forPersonWithEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 2
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/rd;->cY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/people/data/AudienceMember;->forPersonWithPeopleQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    return-object v0
.end method

.method public static forPersonWithGaiaId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 1
    .param p0, "gaiaId"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "avatarUrl"    # Ljava/lang/String;

    .prologue
    const-string v0, "Person ID must not be empty."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/rd;->cW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/people/data/AudienceMember;->forPersonWithPeopleQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    return-object v0
.end method

.method public static forPersonWithPeopleQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7
    .param p0, "peopleQualifiedId"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "avatarUrl"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xr:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->Xr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xs:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->Xs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xu:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xr:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xt:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->UL:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPeopleQualifiedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xs:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xs:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPerson()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersonalCircle()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublicSystemGroup()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemGroup()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Fq:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->Xq:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->isPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Person [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getPeopleQualifiedId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->isPersonalCircle()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Circle [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Group [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/people/data/b;->a(Lcom/google/android/gms/common/people/data/AudienceMember;Landroid/os/Parcel;I)V

    return-void
.end method
