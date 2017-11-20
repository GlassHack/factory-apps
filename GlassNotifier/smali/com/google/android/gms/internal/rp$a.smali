.class public Lcom/google/android/gms/internal/rp$a;
.super Lcom/google/android/gms/internal/rp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/rp",
        "<",
        "Lcom/google/android/gms/people/model/EmailAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/rp;-><init>(Landroid/os/Bundle;CC)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p17}, Lcom/google/android/gms/internal/rp$a;->b(Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/people/model/EmailAddress;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/people/model/EmailAddress;
    .locals 19

    new-instance v1, Lcom/google/android/gms/internal/rl;

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/internal/rl;-><init>(Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
