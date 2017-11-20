.class public Lcom/google/android/gms/people/PeopleClient$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/PeopleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final Mv:Lcom/google/android/gms/people/PeopleClient$a;


# instance fields
.field private LM:Ljava/lang/String;

.field private Mw:Ljava/lang/String;

.field private Mx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/PeopleClient$a;

    invoke-direct {v0}, Lcom/google/android/gms/people/PeopleClient$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/PeopleClient$a;->Mv:Lcom/google/android/gms/people/PeopleClient$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mx:I

    return-void
.end method


# virtual methods
.method public aw(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$a;->LM:Ljava/lang/String;

    return-object p0
.end method

.method public ax(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mw:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/people/PeopleClient$a;->fC()Lcom/google/android/gms/people/PeopleClient$a;

    move-result-object v0

    return-object v0
.end method

.method public dB(I)Lcom/google/android/gms/people/PeopleClient$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mx:I

    return-object p0
.end method

.method public fC()Lcom/google/android/gms/people/PeopleClient$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/PeopleClient$a;

    invoke-direct {v0}, Lcom/google/android/gms/people/PeopleClient$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/people/PeopleClient$a;->LM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$a;->aw(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$a;->dB(I)Lcom/google/android/gms/people/PeopleClient$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/PeopleClient$a;->ax(Ljava/lang/String;)Lcom/google/android/gms/people/PeopleClient$a;

    move-result-object v0

    return-object v0
.end method

.method public fD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mx:I

    return v0
.end method

.method public fE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$a;->Mw:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/PeopleClient$a;->LM:Ljava/lang/String;

    return-object v0
.end method
