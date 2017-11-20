.class public interface abstract Lorg/ejml/alg/dense/linsol/LinearSolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/ejml/data/Matrix64F;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract invert(Lorg/ejml/data/Matrix64F;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract modifiesA()Z
.end method

.method public abstract modifiesB()Z
.end method

.method public abstract quality()D
.end method

.method public abstract setA(Lorg/ejml/data/Matrix64F;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract solve(Lorg/ejml/data/Matrix64F;Lorg/ejml/data/Matrix64F;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method
