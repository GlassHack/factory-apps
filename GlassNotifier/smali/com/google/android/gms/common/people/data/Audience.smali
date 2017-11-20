.class public final Lcom/google/android/gms/common/people/data/Audience;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/a;

.field public static final DOMAIN_RESTRICTED_NOT_SET:I = 0x0

.field public static final DOMAIN_RESTRICTED_RESTRICTED:I = 0x1

.field public static final DOMAIN_RESTRICTED_UNRESTRICTED:I = 0x2


# instance fields
.field private final Xm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private final Xn:I

.field private final Xo:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final Xp:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/Audience;->CREATOR:Lcom/google/android/gms/common/people/data/a;

    return-void
.end method

.method constructor <init>(ILjava/util/List;IZZ)V
    .locals 3
    .param p1, "versionCode"    # I
    .param p3, "domainRestricted"    # I
    .param p4, "fullyUnderstood"    # Z
    .param p5, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "audienceMembers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    iput p1, p0, Lcom/google/android/gms/common/people/data/Audience;->mVersionCode:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/people/data/Audience;->Xm:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/common/people/data/Audience;->Xn:I

    if-ne p1, v0, :cond_2

    iput-boolean p4, p0, Lcom/google/android/gms/common/people/data/Audience;->Xo:Z

    if-nez p4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean p5, p0, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    if-nez p5, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xo:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;IZ)V
    .locals 1
    .param p2, "domainRestricted"    # I
    .param p3, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "audienceMembers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/people/data/Audience;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/common/people/data/Audience;->Xm:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/common/people/data/Audience;->Xn:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    instance-of v1, p1, Lcom/google/android/gms/common/people/data/Audience;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/Audience;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/common/people/data/Audience;->mVersionCode:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/Audience;->mVersionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/Audience;->Xm:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/Audience;->Xm:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/s;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/Audience;->Xn:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/Audience;->Xn:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    iget-boolean v2, p1, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAudienceMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xm:Ljava/util/List;

    return-object v0
.end method

.method public getDomainRestricted()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xn:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/Audience;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/Audience;->mVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/Audience;->Xm:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/Audience;->Xn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xp:Z

    return v0
.end method

.method jo()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->Xo:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/people/data/a;->a(Lcom/google/android/gms/common/people/data/Audience;Landroid/os/Parcel;I)V

    return-void
.end method
