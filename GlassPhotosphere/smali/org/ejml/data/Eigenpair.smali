.class public Lorg/ejml/data/Eigenpair;
.super Ljava/lang/Object;


# instance fields
.field public value:D

.field public vector:Lorg/ejml/data/DenseMatrix64F;


# direct methods
.method public constructor <init>(DLorg/ejml/data/DenseMatrix64F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/ejml/data/Eigenpair;->value:D

    iput-object p3, p0, Lorg/ejml/data/Eigenpair;->vector:Lorg/ejml/data/DenseMatrix64F;

    return-void
.end method
